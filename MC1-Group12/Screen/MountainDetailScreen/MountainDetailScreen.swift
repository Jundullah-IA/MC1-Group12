//
//  MountainDetailScreen.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 13/05/22.
//

import SwiftUI

struct MountainDetail {
    var mount: MountainData
    var about: String
    var requirements: [String] /// administration papers
    var pathWays: String
    var estTime: String
    var minGroup: Int
    var maxGroup: Int
    var ticketPriceWeekend: String
    var ticketPriceWeekdays: String
    var selfLogistic: [String]
    var groupLogistic: [String]
    var extraLogistic: [String] /// additional
    var sources: String
}

struct MountainDetailScreen: View {
    @State private var currentSubview:Int = 0
    @State private var showSheet: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                Color.background
                    .padding(.top, 200)
                
                VStack {
                    Image("gunung_gede")
                        .resizable()
                        .scaledToFill()
                        .frame(width: UIScreen.main.bounds.size.width, height: 300)
                    
                    ScrollView {
                        switch currentSubview {
                            case 0: Text("Information")
                            case 1: Text("Essential")
                            case 2: Text("Requirement")
                            default: Text("")
                        }
                    }
                    
                    Spacer()
                }
                
                VStack {
                    HStack {
                        Text("Lombok, Indonesia")
                            .font(.title3)
                            .italic()
                            .foregroundColor(.white)
                        Spacer()
                    } .padding(.horizontal)
                    
                    HStack {
                        Text("3,762 mdpl")
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
                    
                    Spacer()
                } .padding(.top, 20)
            } .padding(.top, 100)

            
            .navigationTitle("Rinjani")
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
                    
                    .sheet(isPresented: $showSheet) { HikingDetailForm() }
                }
            }
        }
    }
}

struct MountainDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        MountainDetailScreen()
            .previewInterfaceOrientation(.portrait)
    }
}
