//
//  HikingDetailScreen.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct HikingDetailScreen: View {
    @State private var favoriteColor = 0
    @State private var isSheetOpen = false
    @State private var isSheetMountainOpen = false
    @ObservedObject var globalObj: HikingJourney
    
    @State var currentList: String = "group"
    
    var hikeDetail: Hiking
    
    var body: some View {
        VStack {
            VStack {
                HikingCard(globalObj: globalObj, hiking: hikeDetail)
                
                Picker("", selection: $favoriteColor) {
                    Text("Group").tag(0)
                    Text("Personal").tag(1)
                }
                .pickerStyle(.segmented)
                .padding(.vertical, 5)
                
                HStack {
                    Text("\(favoriteColor == 0 ? "Group" : "Personal") Logistic List")
                        .font(.body)
                        .fontWeight(.semibold)
                    Spacer()
                    Menu {
                        Button(action: {currentList = "group"}) {
                            Label("Sort by PIC", systemImage: "").labelStyle(.titleOnly)
                        }
                        Button(action: {currentList = "personal"}) {
                            Label("Sort by Completed", systemImage: "").labelStyle(.titleOnly)
                        }
                    } label: {
                        Label("", systemImage: "arrow.up.arrow.down").labelStyle(.iconOnly)
                    }
                }
                
            }.padding(.horizontal)
            
            ZStack {
                Color.background.ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .leading) {
                        if(favoriteColor == 0) {
                            ForEach(hikeDetail.groupLogistic) { groupItem in
                                ItemCardGroup(groupItem: groupItem)
                            }

                        } else {
                            ForEach(hikeDetail.personalLogistic) {personalItem in
                                ItemCardPersonal(personalItem: personalItem)
                            }
                        }
                                                
                        Button(action: {isSheetOpen = true}) {
                            Label("Add new item", systemImage: "plus.circle").padding(.top, 5)
                        }.padding(.horizontal)
                    }.padding(.vertical)
                }.padding(.horizontal)
            }
        }
        .sheet(isPresented: $isSheetOpen){
            ItemDetailForm(
                globalObj: globalObj,
                hiking: hikeDetail,
                logisticType: favoriteColor == 0 ? "group" : "personal"
            )
        }
        .sheet(isPresented: $isSheetMountainOpen){
            MountainDetailScreen(globalObj: globalObj, mountain: hikeDetail.mountain)
        }
        .navigationTitle("Rinjani")
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {isSheetMountainOpen = true}) {
                    Image(systemName: "info.circle")
                }
            }
        }
    }
}
//
//struct HikingDetailScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        HikingDetailScreen()
//    }
//}
