//
//  SwiftUIView.swift
//  HiKit
//
//  Created by Billi Umar Daeli on 18/08/22.
//


import SwiftUI

struct SwiftUIView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Rectangle()
                    .fill(Color("bg"))
                    .edgesIgnoringSafeArea(.all)
                
                //### Layer 1 CITY/PROVINCE + MDPL ###
                VStack {
                    HStack(spacing: 200) {
                        Text("Lombok")
                            .font(.system(size: 18, weight: .light, design: .default))
                        Text("3000mdpl")
                            .font(.system(size: 18, weight: .light, design: .default))
                    }
                    .padding(EdgeInsets(top: 5, leading: 18, bottom: 478, trailing: 18))
                    Spacer()
                }
                
                //### Layer 2 MOUNTAIN IMAGE ###
                Image("agung")
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 350, height: 180, alignment: .center)
                    .padding(EdgeInsets(top: 30, leading: 18, bottom: 478, trailing: 18))
                
                //### Layer 3.1 Slight Mountain Information ###
                VStack (alignment: .center, spacing: 10) {
                    HStack (alignment: .center, spacing: 40){
                        VStack(spacing: 10) {
                            Image(systemName: "person.3.fill")
                                .font(.system(size: 22, weight: .light, design: .default))
                            Text("Min Hikers")
                                .font(.system(size: 14, weight: .light, design: .default))
                        }
                        VStack(spacing: 10) {
                            Image(systemName: "hourglass")
                                .font(.system(size: 22, weight: .light, design: .default))
                            Text("Max Hike Duration")
                                .font(.system(size: 14, weight: .light, design: .default))
                        }
                        VStack(spacing: 10) {
                            Image(systemName: "capsule.portrait.fill")
                                .font(.system(size: 22, weight: .light, design: .default))
                            Text("For Hiking")
                                .font(.system(size: 14, weight: .light, design: .default))
                        }
                        
                    }
                    .frame(width: 350, height: 80)
                    .background(Color.white)
                    .cornerRadius(20)
                    .padding(EdgeInsets(top: 10, leading: 18, bottom: 10, trailing: 18))
                    .modifier(ShadowModifier())
                    
                    //### Layer 3.2 Slight Mountain Information  ###
                    HStack (alignment: .center, spacing: 80){
                        VStack(spacing: 10) {
                            Image(systemName: "tag")
                                .font(.system(size: 22, weight: .light, design: .default))
                            Text("Locals")
                        }
                        .frame(width: 120, height: 80)
                        .background(Color.white)
                        .cornerRadius(20)
                        .modifier(ShadowModifier())
                        
                        VStack(spacing: 10) {
                            Image(systemName: "tag.fill")
                                .font(.system(size: 22, weight: .light, design: .default))
                            Text("Tourist")
                        }
                        .frame(width: 120, height: 80)
                        .background(Color.white)
                        .cornerRadius(20)
                        .modifier(ShadowModifier())
                        
                    }
                    .padding(EdgeInsets(top: 0, leading: 18, bottom: 50, trailing: 18))
                }
                
                
                //### Layer 4 FUN FACT ###
                VStack (alignment: .leading, spacing: 10) {
                    
                    Text("Safety Fun Fact")
                        .font(.system(size: 19, weight: .bold))
                    
                    VStack (alignment: .leading, spacing: 10) {
                        Text ("Title")
                            .font(.system(size: 19, weight: .bold))
                        
                        Text ("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.")
                            .font(.system(size: 17, weight: .light))
                    }
                    .frame(width: 350, height: 120)
                    .background(Color.white)
                    .cornerRadius(10)
                   
                    
                }
                .padding(EdgeInsets(top: 300, leading: 18, bottom: 0, trailing: 18))
                Spacer()
                
                
                //### Layer 5 CREATE JOURNEY BUTTON ###
                Button {
                    print("test")
                } label : {
                    Text ("Create Journey")
                        .foregroundColor(Color("button-text-color"))
                        .font(.system(size: 16, weight: .semibold, design: .default))
                        .frame(width: 280, height: 50, alignment: .center)
                        .background(Color("button-color"))
                        .cornerRadius(80)
                }
                .padding(EdgeInsets(top: 580, leading: 18, bottom: 0, trailing: 18))
                Spacer()
                
            } .padding(.top)
                .navigationTitle("Semeru")
                .navigationBarTitleDisplayMode(.automatic)
            
        }
        
        
    }
}


struct ShadowModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .shadow(color: Color ("shadow-light"), radius: 8, x: -8, y: -8)
            .shadow(color: Color("shadow-dark"), radius: 8, x: 8, y: 8)
    }
}


struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
