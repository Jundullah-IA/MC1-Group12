//
//  HikingDetailScreen.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct HikingDetailScreen: View {
    @State private var logisticTab = 0 /// 0 = group, 1 = personal
    @State private var isSheetItemOpen = false
    @State private var isSheetMountainOpen = false
    @ObservedObject var globalObj: HikingJourney
    
    @State var currentList: String = "group"
    
    var hikeDetail: Hiking
    
    var body: some View {
        VStack {
            VStack {
                HikingCard(globalObj: globalObj, hiking: hikeDetail)
                
                Picker("", selection: $logisticTab) {
                    Text("Group").tag(0)
                    Text("Personal").tag(1)
                }
                .pickerStyle(.segmented)
                .padding(.vertical, 5)
                
                HStack {
                    Text("\(logisticTab == 0 ? "Group" : "Personal") Logistic List")
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
                        if(logisticTab == 0) {
                            ForEach(hikeDetail.groupLogistic) { groupItem in
                                ItemCardGroup(groupItem: groupItem)
                            }
                            
                        } else {
                            ForEach(hikeDetail.personalLogistic) { personalItem in
                                ItemCardPersonal(personalItem: personalItem)
                            }
                        }
                        
                        Button(action: {isSheetItemOpen = true}) {
                            Label("Add new item", systemImage: "plus.circle").padding(.top, 5)
                        }.padding(.horizontal)
                    }.padding(.vertical)
                }.padding(.horizontal)
            }
        }
        .sheet(isPresented: $isSheetItemOpen){
            ItemDetailForm(
                globalObj: globalObj,
                hiking: hikeDetail,
                logisticType: logisticTab == 0 ? "group" : "personal"
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
