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
    @ObservedObject var globalObj: HikingJourney
    
    var body: some View {
        let historyList = globalObj.journeyList.filter {$0.isDone}
        let activeList = globalObj.journeyList.filter {!$0.isDone}
        
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
                            .onTapGesture {
                                print(globalObj.journeyList)
                            }
                        Divider()
                    }
                    .padding(.horizontal)
                    .background(.white.opacity(0.8))
                    
                    if (activeList.count != 0) {
                        Carousel(globalObj: globalObj)
                            .padding(.bottom, 10)
                    } else {
                        Text("No ongoing plan")
                            .font(.subheadline)
                            .foregroundColor(.darkGreen)
                            .opacity(0.4)
                            .padding(.vertical, 25)
                            .onTapGesture {
                                print(globalObj.journeyList)
                            }
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
                    
                    if historyList.count == 0 {
                        VStack {
                            Image("empty")
                            Text("No journey history")
                                .font(.subheadline)
                                .foregroundColor(.darkGreen)
                                .opacity(0.4)
                        }.padding(.vertical, 100)
                    } else {
                        JourneyList(globalObj: globalObj)
                    }
                    
                }
                
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: MountainListScreen(textOnly: true, globalObj: globalObj)) {
                        Image(systemName: "plus")
                    }
                }
            }
            
            .navigationTitle("Hi, Hikers!")
        }
    }
}


//
//struct HomeScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeScreen()
//    }
//}
