//
//  SwiftUIView.swift
//  HiKit
//
//  Created by Billi Umar Daeli on 18/08/22.
//


import SwiftUI

struct MountainInformationScreen: View {
    @Environment(\.dismiss) var dismiss
    
    @State private var showSheet: Bool = false
    
    var mountain: Mountain
    
//    init(mountain: Mountain) {
//        self.mountain = mountain
//    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Color("bg"))
                    .edgesIgnoringSafeArea(.all)
                
                //### Layer 1 CITY/PROVINCE + MDPL ###
                VStack {
                    HStack(spacing: 200) {
                        Text(mountain.name)
                            .font(.system(size: 18, weight: .light, design: .default))
                        Text("\(mountain.height)mdpl")
                            .font(.system(size: 18, weight: .light, design: .default))
                    }
                    .padding(EdgeInsets(top: 5, leading: 18, bottom: 478, trailing: 18))
                    Spacer()
                }
                
                //### Layer 2 MOUNTAIN IMAGE ###
                Image(mountain.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 350, height: 180, alignment: .center)
                    .padding(EdgeInsets(top: 30, leading: 18, bottom: 478, trailing: 18))
                
                //### Layer 3.1 Slight Mountain Information ###
                VStack (alignment: .center, spacing: 10) {
                    HStack (alignment: .center, spacing: 40){
                        VStack(spacing: 10) {
                            HStack {
                                Image(systemName: "person.3.fill")
                                    .font(.system(size: 22, weight: .light, design: .default))
                                Text("\(mountain.minimumGroupHikers)").font(.title3)
                            }
                            Text("Min Hikers")
                                .font(.system(size: 14, weight: .light, design: .default))
                        }
                        VStack(spacing: 10) {
                            HStack {
                                Image(systemName: "hourglass")
                                    .font(.system(size: 22, weight: .light, design: .default))
                                Text("\(mountain.hikingDuration)").font(.title3)
                            }
                            Text("Max Hike Duration")
                                .font(.system(size: 14, weight: .light, design: .default))
                        }
                        VStack(spacing: 10) {
                            HStack {
                                Image(systemName: "capsule.portrait.fill")
                                    .font(.system(size: 22, weight: .light, design: .default))
                                Text("\(mountain.statusForHiking)").font(.title3)
                            }
                            Text("For Hiking")
                                .font(.system(size: 14, weight: .light, design: .default))
                        }
                        
                    }
                    .frame(width: 350, height: 80)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(EdgeInsets(top: 10, leading: 18, bottom: 10, trailing: 18))
                    .modifier(ShadowModifier())
                    .foregroundColor(Color.darkGreen)
                    
                    //### Layer 3.2 Slight Mountain Information  ###
                    HStack (alignment: .center, spacing: 50){
                        VStack(spacing: 10) {
                            HStack {
                                Image(systemName: "tag")
                                    .font(.system(size: 22, weight: .light, design: .default))
                                Text("\(mountain.ticketWeekend)").font(.title3)
                            }
                            Text("Weekend")
                        }
                        .frame(width: 150, height: 80)
                        .background(Color.white)
                        .cornerRadius(20)
                        .modifier(ShadowModifier())
                        
                        VStack(spacing: 10) {
                            HStack {
                                Image(systemName: "tag.fill")
                                    .font(.system(size: 22, weight: .light, design: .default))
                                Text("\(mountain.ticketWeekdays)").font(.title3)
                            }
                            Text("Weekdays")
                        }
                        .frame(width: 150, height: 80)
                        .background(Color.white)
                        .cornerRadius(20)
                        .modifier(ShadowModifier())
                        
                    }
                    .padding(EdgeInsets(top: 0, leading: 18, bottom: 50, trailing: 18))
                    .foregroundColor(Color.darkGreen)
                }
                
                
                //### Layer 4 FUN FACT ###
                
                VStack (alignment: .leading, spacing: 10) {
                    
                    Text("Safety Fun Fact")
                        .font(.system(size: 19, weight: .bold))
                    
                    ScrollView(.horizontal) {
                    
                        VStack (alignment: .leading, spacing: 10) {
                        Text (mountain.name)
                            .font(.system(size: 19, weight: .bold))
                        
                        Text ("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                            .font(.system(size: 17, weight: .light))
                    }
                    .frame(width: 350, height: 120)
                    .background(Color.white)
                    .cornerRadius(8)
                    .padding(EdgeInsets(top: 5, leading: 5, bottom: 5, trailing: 10))
                    .modifier(ShadowModifier())
                   
                   
                    
                }
                
                }.padding(EdgeInsets(top: 350, leading: 18, bottom: 0, trailing: 18))
                Spacer()
                
                
                //### Layer 5 CREATE JOURNEY BUTTON ###
                Button {
                    print("test")
                } label : {
                    Button ("Create Journey") {
                        showSheet = true
                    }
                        .foregroundColor(Color("button-text-color"))
                        .font(.system(size: 16, weight: .semibold, design: .default))
                        .frame(width: 280, height: 50, alignment: .center)
                        .background(Color("button-color"))
                        .cornerRadius(80)
                }
                .padding(EdgeInsets(top: 580, leading: 18, bottom: 0, trailing: 18))
                Spacer()
                
            } .padding(.top)
                .navigationTitle(mountain.name)
                .navigationBarTitleDisplayMode(.automatic)
                .sheet(isPresented: $showSheet, onDismiss: {showSheet = false}) { HikingDetailForm(mountain: mountain) }
            
                .toolbar {
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {
                            dismiss()
                        }, label: {
                            Image(systemName: "chevron.left")
                            Text("Mountains")
                        })
                    }
                }
        }
        
        
    }
}


struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color ("shadow-light"), radius: 5, x: -4, y: -4)
            .shadow(color: Color("empty-checkmark"), radius: 2, x: 4, y: 4)
    }
}


struct MountainInformationScreen_Previews: PreviewProvider {
    static var previews: some View {
        MountainInformationScreen(mountain: MountainList[0])
    }
}
