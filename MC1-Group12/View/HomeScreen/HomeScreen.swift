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
    
    @FetchRequest(sortDescriptors: []) private var journeySet: FetchedResults<Journey>
    
    var body: some View {
        
        let journeyList = journeySet.map{$0}
        
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
                            }
                        Divider()
                    }
                    .padding(.horizontal)
                    .background(.white.opacity(0.8))
                    
                    if (journeySet.count != 0) {
                        Carousel(journeySet: journeyList)
                            .padding(.bottom, 10)
                    } else {
                        Text("No ongoing plan")
                            .font(.subheadline)
                            .foregroundColor(.darkGreen)
                            .opacity(0.4)
                            .padding(.vertical, 25)
                            .onTapGesture {
//                                print(globalObj.journeyList)
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
                    
                    if journeySet.count == 0 {
                        VStack {
                            Image("empty")
                            Text("No journey history")
                                .font(.subheadline)
                                .foregroundColor(.darkGreen)
                                .opacity(0.4)
                        }.padding(.vertical, 100)
                    } else {
                        JourneyList(journeySet: journeyList)
                    }
                    
                }
                
            }
            
            .onAppear {
                journeyList.forEach {item in
                    print(item.wrapMountain)
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


//
//struct HomeScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeScreen()
//    }
//}
