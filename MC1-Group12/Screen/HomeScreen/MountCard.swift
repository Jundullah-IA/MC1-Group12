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
    
    var body: some View {
        NavigationLink(destination: {
            if planCard ?? false {
                Text("Hiking Detail Screen")
            } else {
                MountainDetailScreen()
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
                            Text("SEMERU")
                                .font(.title2)
                                .fontWeight(.bold)
                            Text("Part of Indonesia")
                                .font(.system(size: 16, weight: .regular, design: .serif))
                                .italic()
                        }
                        if planCard ?? false {
                            Spacer()
                            HStack{
                                Image(systemName: "calendar")
                                Text("18 June 2022")
                                    .font(.subheadline)
                            }
                        }
                    }
                    Spacer()
                    HStack{
                        Image(systemName: "triangle.tophalf.filled")
                        Text("3.012 mdpl")
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
