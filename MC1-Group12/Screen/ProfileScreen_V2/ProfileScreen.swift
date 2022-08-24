//
//  ProfileScreen.swift
//  HiKit
//
//  Created by Jundullah Ilhaq Aulia on 18/08/22.
//

import SwiftUI

struct Info: Hashable {
    let name: String
    let info: String
}

struct ProfileScreen: View {
    
    let columns: [GridItem] = [
        GridItem(.fixed(171), spacing: 12, alignment: nil),
        GridItem(.fixed(171), spacing: 12, alignment: nil)
    ]
    
    let mountaindata : [Info] = [
        Info(name: "Ciremai", info: ""),
        Info(name: "Galunggung", info: ""),
    ]
    
    var body: some View {
        VStack {
            Rectangle()
                .fill(Color("bg"))
                .edgesIgnoringSafeArea(.all)
            
            //### Screen Atas ###
            ZStack {
                Image("profile-bg")
                    .edgesIgnoringSafeArea(.all)
                    .padding(EdgeInsets(top: 0, leading: 0, bottom: 600, trailing: 0))
                Spacer()
                
                ZStack(alignment:.leading) {
                    
                    HStack {
                        VStack (alignment: .leading){
                            Text ("Billi Journey's")
                                .font(.system(size: 19, weight: .semibold, design: .default))
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            Text ("With Hikit, you can make it!")
                                .font(.system(size: 12, weight: .regular, design: .default))
                        }.padding(.leading, 30)
                        Spacer()
                    }
                    
                    
                    .frame(width: 300, height: 60)
                    .background()
                    .cornerRadius(20)
                    .shadow(radius: 5)
                    
                    .padding(EdgeInsets(top: 0, leading: 80, bottom: 0, trailing: 18))
             
                    
                    Image(systemName: "b.circle.fill")
                        .font(.system(size: 78, weight: .light, design: .default))
                        .foregroundColor(Color("mount-detail-color"))
                        .frame(width: 90, height: 90)
                        .padding(EdgeInsets(top: 0, leading: 18, bottom: 40, trailing: 300))
                    
                }
                .padding(EdgeInsets(top: 80, leading: 0, bottom: 648, trailing: 0))
            
                
                VStack (alignment: .leading){
                    Text ("Journey History")
                        .font(.system(size: 24, weight: .bold, design: .default))
                        .position(x: 120, y: 20)
                        .frame(width: 243, height: 41)
                    
                //Grid View
                ScrollView {
                    LazyVGrid (columns: columns, alignment: .center) {

                        
                        ForEach(mountaindata, id: \.self){ dta in

                        //Colom NO 1 #############################
                        VStack (alignment: .leading, spacing: 5) {
                            //Elemen 1 Image Gunung
                            Image("agung")
                                .resizable()
                                .frame(width: 171, height: 130, alignment: .top)
                            
                            //Elemen 2 Title Gunung
                            Text(dta.name)
                                .font(.system(size: 19, weight: .semibold, design: .default))
                            //Elemen 3 Profil Icon
                            HStack (alignment: .center, spacing: -10) {
                                Image(systemName: "k.circle.fill")
                                    .font(.system(size: 22, weight: .light, design: .default))
                                    .foregroundColor(Color("mount-detail-color"))
                                Image(systemName: "b.circle.fill")
                                    .font(.system(size: 22, weight: .light, design: .default))
                                    .foregroundColor(Color("button-color"))
                                Image(systemName: "s.circle.fill")
                                    .font(.system(size: 22, weight: .light, design: .default))
                                    .foregroundColor(Color("mount-detail-color"))
                                
                            }
                            
                            //Elemen 4 Date
                            Text("17 Agustus 2022")
                                .font(.system(size: 14, weight: .light, design: .default))
                                .padding(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                        }
                        .frame(width: 171, height: 221)
                        .background(Color("shadow-light"))
                        .cornerRadius(10)
                        .shadow(radius: 2)
                        
                            
                        }
                        
                        
                    }
                    
                }
                }.padding(EdgeInsets(top: 220, leading: 0, bottom: 0, trailing: 0))
            }
        }
    }
}

struct ProfileScreen_Previews: PreviewProvider {
    static var previews: some View {
        ProfileScreen()
    }
}

//Lazy Vgrid / Hgrid
