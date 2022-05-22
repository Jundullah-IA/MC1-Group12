//
//  MountainDetailScreen.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 13/05/22.
//

import SwiftUI

struct MountainDetailScreen: View {
    @State private var currentSubview:Int = 0
    @State private var showSheet: Bool = false
    
    @ObservedObject var globalObj: HikingJourney
    var mountain: Mountain
    var previewOnly: Bool = false
    
    var body: some View {
        ZStack(alignment: .top) {
            Image(mountain.image)
                .resizable()
                .scaledToFill()
                .overlay(Rectangle().fill(LinearGradient(
                    colors: [.black.opacity(0.4), .clear],
                    startPoint: .top,
                    endPoint: .bottom
                )))
                .frame(width: UIScreen.main.bounds.size.width, height: 300)
            
            VStack {
                HStack {
                    Text(mountain.location)
                        .font(.system(size: 20, weight: .regular, design: .serif))
                        .italic()
                        .foregroundColor(.white)
                    Spacer()
                }.padding(.horizontal)
                
                HStack {
                    Text("\(mountain.height) mdpl")
                        .foregroundColor(.white)
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom, 160)
                
                HStack {
                    Spacer()
                    VStack {
                        Image(systemName: "info.circle.fill")
                        Text("Information")
                            .font(.callout)
                    }
                    .padding()
                    .onTapGesture(perform: {currentSubview = 0})
                    .foregroundColor(currentSubview == 0 ? Color.mountainDetailButton : .gray)
                    
                    VStack {
                        Image(systemName: "wand.and.stars")
                        Text("Esssential")
                            .font(.callout)
                    }
                    .padding()
                    .onTapGesture(perform: {currentSubview = 1})
                    .foregroundColor(currentSubview == 1 ? Color.mountainDetailButton : .gray)
                    
                    VStack {
                        Image(systemName: "newspaper.fill")
                        Text("Requirement")
                            .font(.callout)
                    }
                    .padding()
                    .onTapGesture(perform: {currentSubview = 2})
                    .foregroundColor(currentSubview == 2 ? Color.mountainDetailButton : .gray)
                    
                    Spacer()
                }
                .frame(height: 70)
                .foregroundColor(.gray)
                .background(.white)
                VStack {
                    ScrollView {
                        switch currentSubview {
                            case 0: InformationView(hikingEstimation: mountain.estimation, mountainInfo:  mountain.informations)
                        case 1: EssentialView(mountainEssential: mountain.essentials)
                        case 2: RequirementView(mountainRequairement: mountain.requirements)
                        default: Text("")
                        }
                    }
                    .background(Color.background)
                    .animation(.linear, value: currentSubview)
                    Spacer()
                }
                Spacer()
            } .padding(.top, 20)
        } .padding(.top, previewOnly == true ? 0 : 100)
            .navigationTitle(mountain.name)
            .navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.all)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(
                        action: { showSheet.toggle() },
                        label: {
                            Text("Start").fontWeight(.bold)
                        }
                    )
                    
                    .sheet(isPresented: $showSheet) { HikingDetailForm(globalObj: globalObj, mountain: mountain) }
                }
            }
    }
}

//struct MountainDetailScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        MountainDetailScreen()
//            .previewInterfaceOrientation(.portrait)
//    }
//}
