//
//  MyPlanCard.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 14/05/22.
//

import SwiftUI

struct MountCard: View {
    let cardHeight: CGFloat = 165
    var planCard: Bool?
    
    @ObservedObject var globalObj: HikingJourney
    var hikeDetail: Hiking?
    var mountain: Mountain
    
    var body: some View {
        let mountain: Mountain = hikeDetail?.mountain ?? mountain
        
        NavigationLink(destination: {
            if hikeDetail != nil {
                HikingDetailScreen(globalObj: globalObj, hikeDetail: hikeDetail!)
            } else {
                MountainDetailScreen(globalObj: globalObj, mountain: mountain)
            }
        }) {
            ZStack(alignment: .bottom) {
                
                Image(mountain.image)
                    .resizable()
                    .scaledToFill()
                    .frame(height: cardHeight)
                    .overlay(Rectangle().fill(LinearGradient(
                        colors: [.clear, .black.opacity(0.4)],
                        startPoint: .top,
                        endPoint: .bottom
                    )))
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
                                Text(dateToString(hikeDetail?.date ?? Date.now))
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

//struct MyPlanCard_Previews: PreviewProvider {
//    static var previews: some View {
//        MountCard()
//    }
//}
