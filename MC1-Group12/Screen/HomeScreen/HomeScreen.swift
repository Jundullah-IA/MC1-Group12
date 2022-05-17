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
                    
                    if noPlan {
                        Text("No ongoing plan")
                            .font(.subheadline)
                            .opacity(0.4)
                            .padding(.vertical, 25)
                    } else {
                        MountCard(planCard: true).padding(.vertical, 10)
                    }
                    
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
                    
                    if noJourney {
                        Text("No journey history")
                            .font(.subheadline)
                            .opacity(0.4)
                            .padding(.vertical, 25)
                            
                    } else {
                        JourneyList()
                    }
                    
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {noPlan = !noPlan; noJourney = !noJourney}) {
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
