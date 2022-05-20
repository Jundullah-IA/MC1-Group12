//
//  HomeScreen.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 11/05/22.
//

import SwiftUI

struct HomeScreen: View {
    @State var noPlan = true
    @State var noJourney = true
//    var hikingJourneyHistory: [Hiking]
    
    @ObservedObject var hikingJourney = HikingJourney()
    
    var body: some View {
        
        NavigationView {
            ZStack(alignment: .top){
                
                Color.background
                
                VStack(spacing: 0) {
                    VStack(alignment: .leading) {
                        Divider()
                        Text("My Plan")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.darkGreen)
                        Divider()
                    }
                    .padding(.horizontal)
                    .background(.white.opacity(0.8))
                    
                    if (hikingJourney.hikingJourney.count != 0) {
                        Carousel(runingHikingJourney: hikingJourney.hikingJourney)
                            .padding(.bottom, 10)
                    } else {
                        Text("No ongoing plan")
                            .font(.subheadline)
                            .foregroundColor(.darkGreen)
                            .opacity(0.4)
                            .padding(.vertical, 25)
                    }
                    
//                    if false {
//                        Text("No ongoing plan")
//                            .font(.subheadline)
//                            .foregroundColor(.darkGreen)
//                            .opacity(0.4)
//                            .padding(.vertical, 25)
//                    } else {
//                        Carousel().padding(.bottom, 10)
//                    }
                    
                    VStack(alignment: .leading) {
                        Divider()
                        Text("Journey History")
                            .font(.body)
                            .fontWeight(.semibold)
                            .foregroundColor(.darkGreen)
                        Divider()
                        
                    }
                    .padding(.horizontal)
                    .background(.white.opacity(0.8))
                    
                    if false {
                        VStack {
                        Image("empty")
                        Text("No journey history")
                            .font(.subheadline)
                            .foregroundColor(.darkGreen)
                            .opacity(0.4)
                        }.padding(.vertical, 25)
                    } else {
                        JourneyList()
                    }
                    
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: MountainListScreen(textOnly: true)) {
                        Image(systemName: "plus")
                    }
                }
            }
            
            .navigationTitle("Hi, Hikers!")
        }
        
    }
}



struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}
