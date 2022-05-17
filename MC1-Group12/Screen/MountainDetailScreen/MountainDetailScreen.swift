//
//  MountainDetailScreen.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 13/05/22.
//

import SwiftUI

struct RoundedCornersShape: Shape {
    let corners: UIRectCorner
    let radius: CGFloat
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

struct MountainDetailScreen: View {
    @State private var currentSubview:Int = 0
    @State private var showSheet: Bool = false
    
    var body: some View {
        VStack {
            ZStack {
                Color(UIColor.systemGray5)
                    .padding(.top, 200)
                
                VStack {
                    Image("gunung_gede")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.size.width, height: 300)
                        .scaledToFill()
                    
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
//                            if currentSubview == 0 {
//                                Rectangle()
//                                    .frame(width: 80, height: 7, alignment: .center)
//                                    .padding(.bottom, 6)
//                            }
                            
                            Image(systemName: "info.circle.fill")
                            Text("Information")
                                .font(.callout)
                        }
                        .padding()
                        .onTapGesture(perform: {currentSubview = 0})
                        .foregroundColor(currentSubview == 0 ? Color(UIColor.systemCyan) : .gray)
                        
                        Spacer()
                        VStack {
//                            if currentSubview == 1 {
//                                Rectangle()
//                                    .frame(width: 80, height: 7, alignment: .center)
//                                    .padding(.bottom, 6)
//                            }
                            
                            Image(systemName: "wand.and.stars")
                            Text("Esssential")
                                .font(.callout)
                        }
                        .onTapGesture(perform: {currentSubview = 1})
                        .foregroundColor(currentSubview == 1 ? Color(UIColor.systemCyan) : .gray)
                        
                        Spacer()
                        VStack {
//                            if currentSubview == 2 {
//                                Rectangle()
//                                    .frame(width: 80, height: 7, alignment: .center)
//                                    .padding(.bottom, 6)
//                            }
                            
                            Image(systemName: "newspaper.fill")
                            Text("Requirement")
                                .font(.callout)
                        }
                        .onTapGesture(perform: {currentSubview = 2})
                        .foregroundColor(currentSubview == 2 ? Color(UIColor.systemCyan) : .gray)
                        
                        Spacer()
                    }
                    .frame(height: 70)
                    .foregroundColor(.gray)
                    .background(
                        RoundedCornersShape(corners: [.topLeft, .topRight], radius: 30)
                            .fill(Color(UIColor.systemGray6))
                    )
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
