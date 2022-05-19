//
//  MountainListScreen.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 11/05/22.
//

import SwiftUI

struct MountainListScreen: View {
    let names = mounts.map {$0.name}
    @State private var searchText = ""
    var textOnly: Bool?
    
    var body: some View {
        if textOnly ?? false {
            List {
                ForEach(MountainList) {mountain in
                    NavigationLink(destination: MountainDetailScreen(mountain: mountain)) {
                        Text(mountain.name).foregroundColor(.accentColor)
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Destinations")
            .navigationBarTitleDisplayMode(.inline)
        } else {
            NavigationView {
                ScrollView {
                    ForEach(MountainList) { mountain in
                        MountCard(mountain: mountain).padding(.vertical, 2)
                    }
                }
                .searchable(text: $searchText)
                .navigationTitle("Mountains")
            }
        }
    }
    
    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
    
}

struct MountainListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MountainListScreen()
    }
}
