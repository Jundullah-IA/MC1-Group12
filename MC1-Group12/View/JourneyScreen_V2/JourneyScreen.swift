//
//  JourneyScreen.swift
//  HiKit
//
//  Created by Jundullah Ilhaq Aulia on 14/08/22.
//

import SwiftUI

struct JourneyScreen: View {
    @FetchRequest(sortDescriptors: []) private var journeySet: FetchedResults<Journey>
    @Environment(\.managedObjectContext) var moc
    @State private var refreshID = UUID()
    
    var body: some View {
        NavigationView {
            VStack {
                if(journeySet.count > 0) {
                    ScrollView {
                        ForEach(journeySet) {journey in
                            NavigationLink(destination: JourneyDetailScreen(journey: journey).onDisappear(perform: {self.refreshID = UUID()})) {
                                JourneyCard(journey: journey)
                            }
                        }.id(refreshID)
                    }
                    .background(Color.background)
                } else {
                    VStack {
                        VStack {
                            VStack(alignment: .leading) {
                                Text("INSERT CODE")
                                    .bold()
                                    .font(.title3)
                                    .foregroundColor(Color.darkGreen)
                                    .padding(.top)
                                
                                Text("Do you have the code? Ask your team leader so you can jouin the journey")
                                    .foregroundColor(Color.accentColor)
                                    .padding(.top, 4)
                            }.padding(.horizontal)
                            
                            HStack(alignment: .center) {
                                RoundedRectangle(cornerRadius: 10).frame(width: 40, height: 60).padding(.horizontal, 3)
                                RoundedRectangle(cornerRadius: 10).frame(width: 40, height: 60).padding(.horizontal, 3)
                                RoundedRectangle(cornerRadius: 10).frame(width: 40, height: 60).padding(.horizontal, 3)
                                RoundedRectangle(cornerRadius: 10).frame(width: 40, height: 60).padding(.horizontal, 3)
                                RoundedRectangle(cornerRadius: 10).frame(width: 40, height: 60).padding(.horizontal, 3)
                            }
                            .foregroundColor(Color.accentColor.opacity(0.5))
                            .padding(.vertical)
                            
                            Button {
                                
                            } label: {
                                Text("Join Journey")
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(.white)
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .fill(Color.darkGreen)
                                    .frame(width: 150, height: 45)
                            )
                            .frame(width: 150, height: 45)
                            .padding(.top)
                            
                            Text("or").foregroundColor(Color.darkGreen).padding()
                            
                            Button {
                                
                            } label: {
                                Text("Create Journey")
                                    .font(.title3)
                            }
                            .background(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.darkGreen.opacity(0.5), lineWidth: 2)
                                    .background(Color.white)
                                    .frame(width: 150, height: 45)
                            )
                            .frame(width: 150, height: 45)
                            .padding(.bottom)
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 20, style: .continuous).fill(.white)
                        )
                        .padding()
                    } .background(
                        Image("bg")
                            .scaledToFit()
                            .padding(.bottom, 370)
                            .opacity(0.4)
                    )
                    
                    Spacer()
                }
            }
            
            .navigationTitle("Let's Hike")
            .navigationBarTitleDisplayMode(.large)
            
            .onAppear {
                try? moc.save()
            }
        }
    }
}

struct JourneyScreen_Previews: PreviewProvider {
    static var previews: some View {
        JourneyScreen()
    }
}
