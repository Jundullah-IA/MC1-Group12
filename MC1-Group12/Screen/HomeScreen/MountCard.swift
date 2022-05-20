//
//  MyPlanCard.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 14/05/22.
//

import SwiftUI

struct MountainData {
    var id = UUID()
    var image: String
    var name: String
    var altitude: Int
    var loc: String
}


struct PlanData {
    var id = UUID()
    var mount: MountainData
}

struct MountCard: View {
    let cardHeight: CGFloat = 165
    var planCard: Bool?
    //    var data: MountData
    var hikingDate: Date = Date.now
    
    @State var mountain: Mountain = Mountain(location: "", height: 0)
    
    func dateToString(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMM yyyy"
        let someDateTime = formatter.string(from: date)
        return someDateTime
    }
    
    var body: some View {
        NavigationLink(destination: {
            if planCard ?? false {
                HikingDetailScreen()
            } else {
                MountainDetailScreen(mountain: mountain)
            }
        }) {
            ZStack(alignment: .bottom) {
                
                Image("semeru")
                    .resizable()
                    .scaledToFill()
                    .frame(height: cardHeight)
                    .overlay(Rectangle().opacity(0.2))
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                HStack(alignment: .bottom) {
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading){
                            Text(mountain.name)
                                .font(.title2)
                                .fontWeight(.bold)
                            Text(mountain.location)
                                .font(.system(size: 16, weight: .regular, design: .serif))
                                .italic()
                        }
                        if planCard ?? false {
                            Spacer()
                            HStack{
                                Image(systemName: "calendar")
                                Text(dateToString(hikingDate))
                                    .font(.subheadline)
                            }
                        }
                    }
                    Spacer()
                    HStack{
                        Image(systemName: "triangle.tophalf.filled")
                        Text("\(mountain.height) mdpl")
                            .font(.subheadline)
                    }
                }
                .foregroundColor(.white)
                .padding()
                
            }
            .frame(height: cardHeight)
            .padding(.horizontal)
            
        }
    }
}

struct MyPlanCard_Previews: PreviewProvider {
    static var previews: some View {
        MountCard()
    }
}
