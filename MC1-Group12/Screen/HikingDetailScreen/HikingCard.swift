//
//  HikingCard.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct HikingCard: View {
    let height: CGFloat = 120
    
    @ObservedObject var globalObj: HikingJourney
    @State private var isSheetHikingOpen = false
    @State private var showAlert = false
    var hiking: Hiking
    
    var body: some View {
        let mountain = hiking.mountain
//        let index = globalObj.journeyList.firstIndex(where: {$0.id == hiking.id}) ?? 0
        
        ZStack {
            Image(mountain.image)
                .resizable()
                .scaledToFill()
                .frame(height: height)
                .overlay(Rectangle().opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text(mountain.location)
                            .font(.system(size: 18, weight: .regular, design: .serif))
                            .italic()
                        Text("\(mountain.height) mdpl")
                            .font(.subheadline)
                    }
                    Spacer()
                    Menu {
                        Button(action: {
                            isSheetHikingOpen.toggle()
                        }) {
                            Label("Edit", systemImage: "square.and.pencil")
                        }
                        Button(role: .destructive, action: {
                            showAlert.toggle()
                        }) {
                            Label("Delete", systemImage: "trash")
                        }
//                        Button(role: .destructive, action: {
//                            globalObj.journeyList[index].isDone.toggle()
//                        }) {
//                            Label("test done", systemImage: "trash")
//                        }
                    } label: {
                        Image(systemName: "ellipsis")
                            .rotationEffect(.degrees(-90))
                            .padding(.top, 7)
                    }
                }
                
                Spacer()
                
                HStack {
                    HStack{
                        Image(systemName: "calendar")
                        Text(dateToString(hiking.date))
                            .font(.subheadline)
                    }
                    Spacer()
                    HStack {
                        Image(systemName: "person.3.fill")
                        Text(hiking.hiker.count.description)
                    }
                }
            }
            .padding(.all, 12)
            .foregroundColor(.white)
        }
        .frame(height: height)
        .sheet(isPresented: $isSheetHikingOpen ) {
            HikingDetailForm(globalObj: globalObj, mountain: hiking.mountain, hiking: hiking)
        }
        .alert("Would you like to delete this journey?", isPresented: $showAlert, actions: {
            Button("Delete", role: .destructive, action: {
                let index = globalObj.journeyList.firstIndex {$0.id == hiking.id} ?? 0
                
                globalObj.journeyList.remove(at: index)
            })
        }, message: {
            Text("This action cannot be undone")
        })
    }
}
//
//struct HikingCard_Previews: PreviewProvider {
//    static var previews: some View {
//        HikingCard()
//    }
//}
