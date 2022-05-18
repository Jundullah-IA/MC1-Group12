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
    
    var body: some View {
        
        VStack {
            VStack {
                HikingCard()
                
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
                        Button(action: {}) {
                            Label("Sort by PIC", systemImage: "").labelStyle(.titleOnly)
                        }
                        Button(action: {}) {
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
                        ForEach((0..<3), id: \.self) { index in
                            ItemCard()
                        }
                        Button(action: {isSheetOpen = true}) {
                            Label("Add new item", systemImage: "plus.circle").padding(.top, 5)
                        }.padding(.horizontal)
                    }.padding(.vertical)
                }.padding(.horizontal)
            }
        }
        .sheet(isPresented: $isSheetOpen){
            ItemDetailForm()
        }
        .sheet(isPresented: $isSheetMountainOpen){
            MountainDetailScreen()
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

struct HikingDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        HikingDetailScreen()
    }
}
