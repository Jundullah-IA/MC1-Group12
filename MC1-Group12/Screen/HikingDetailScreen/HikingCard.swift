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
    var hiking: Hiking
    
    var body: some View {
        let mountain = hiking.mountain
        let index = globalObj.journeyList.firstIndex(where: {$0.id == hiking.id}) ?? 0
        
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
                        Button(action: {}) {
                            Label("Edit", systemImage: "square.and.pencil")
                        }
                        Button(role: .destructive, action: {}) {
                            Label("Delete", systemImage: "trash")
                        }
                        Button(role: .destructive, action: {
//                            print(hiking)
//                            print(globalObj.journeyList.first {$0.id == hiking.id}.isDone = true)
                            globalObj.journeyList[index].isDone.toggle()
                            if var foo = globalObj.journeyList.first(where: {$0.id == hiking.id}) {
                                foo.isDone = true
                            } else {
                               // item could not be found
                            }
                            
                        }) {
                            Label("test", systemImage: "trash")
                        }
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
                        Text("18 June 2022")
                            .font(.subheadline)
                    }
                    Spacer()
                    HStack {
                        Image(systemName: "person.3.fill")
                        Text("10")
                    }
                }
            }
            .padding(.all, 12)
            .foregroundColor(.white)
        }.frame(height: height)
    }
}
//
//struct HikingCard_Previews: PreviewProvider {
//    static var previews: some View {
//        HikingCard()
//    }
//}
