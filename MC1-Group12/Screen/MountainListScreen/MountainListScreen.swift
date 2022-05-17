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
    
    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(searchResults, id: \.self) { name in
                    NavigationLink(destination: Text(name)) {
                        MountCard()
                            .padding(.vertical, 2)
                    }
                }
                .listRowBackground(Color.clear)
            }
            .searchable(text: $searchText)
            .navigationTitle("Mountains")
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
