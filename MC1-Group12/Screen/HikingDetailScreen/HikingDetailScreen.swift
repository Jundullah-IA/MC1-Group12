//
//  HikingDetailScreen.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct ActiveItem : Identifiable {
    var calledFrom: Int
    var id: Int { return calledFrom }
}

struct HikingDetailScreen: View {
    @ObservedObject var globalObj: HikingJourney
    var hikeDetail: Hiking
    
    @State private var logisticTab = 0 /// 0 = group, 1 = personal
    @State private var isSheetItemOpen = false
    @State private var isSheetMountainOpen = false
    @State private var isItemDetailOpen = false
    @State var currentList: String = "group"
    @State var activeItem : ActiveItem?
    
    @State var loading = false
    @State var moveToHome = false
    
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
                    Button(action: {isSheetItemOpen = true}) {
                        Label("Add Item", systemImage: "plus").labelStyle(.titleOnly)
                    }
                }
                
            }.padding(.horizontal)
            
            ZStack {
                Color.background.ignoresSafeArea()
                
                ScrollView {
                    VStack(alignment: .leading) {
                        if(logisticTab == 0) {
                            ForEach(0..<hikeDetail.groupLogistic.count, id: \.self) { n in
                                ItemCardGroup(globalObj: globalObj, hiking: hikeDetail, groupItem: hikeDetail.groupLogistic[n])
                                    .onTapGesture {
                                        activeItem = ActiveItem(calledFrom: n)
                                    }
                            }
                            .sheet(item: $activeItem) { item in
                                ItemDetailForm(
                                    formState: "Display",
                                    globalObj: globalObj,
                                    hiking: hikeDetail,
                                    logisticType: logisticTab == 0 ? "group" : "personal",
                                    groupItem: hikeDetail.groupLogistic[item.calledFrom],
                                    personalItem: hikeDetail.personalLogistic[item.calledFrom]
                                )
                            }
                            
                        } else {
                            ForEach(0..<hikeDetail.personalLogistic.count, id: \.self) { n in
                                ItemCardPersonal(globalObj:globalObj, hiking: hikeDetail, personalItem: hikeDetail.personalLogistic[n])
                                    .onTapGesture {
                                        activeItem = ActiveItem(calledFrom: n)
                                    }
                            }
                            
                            .sheet(item: $activeItem) { item in
                                ItemDetailForm(
                                    formState: "Display",
                                    globalObj: globalObj,
                                    hiking: hikeDetail,
                                    logisticType: logisticTab == 0 ? "group" : "personal",
                                    groupItem: hikeDetail.groupLogistic[item.calledFrom],
                                    personalItem: hikeDetail.personalLogistic[item.calledFrom]
                                )
                            }
                        }
                    }.padding(.vertical)
                }.padding(.horizontal)
            }
        }
        .sheet(isPresented: $isSheetItemOpen){
            ItemDetailForm(
                formState: "New",
                globalObj: globalObj,
                hiking: hikeDetail,
                logisticType: logisticTab == 0 ? "group" : "personal",
                groupItem: GroupItem(),
                personalItem: PersonalItem()
            )
        }
        .sheet(isPresented: $isSheetMountainOpen){
            MountainDetailScreen(globalObj: globalObj, mountain: hikeDetail.mountain, previewOnly: true)
        }
        
        .navigationTitle(hikeDetail.mountain.name)
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
