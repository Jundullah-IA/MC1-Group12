//
//  MountainListScreen.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 11/05/22.
//

import SwiftUI

struct MountainListScreen: View {
    @State private var searchText = ""
    var textOnly: Bool?
    
    var journey: Journey = Journey()
    
    var searchResults: [Mountain] {
        if searchText.isEmpty {
            return MountainList
        } else {
            return MountainList.filter {$0.name.localizedCaseInsensitiveContains(searchText)}
        }
    }
    
    var body: some View {
        if textOnly ?? false {
            List {
                ForEach(searchResults) {mountain in
                    NavigationLink(destination: MountainDetailScreen(mountain: mountain)) {
                        Text(mountain.name).foregroundColor(.accentColor)
                    }
                }
            }
            .animation(.spring(), value: searchResults.count)
            .searchable(text: $searchText)
            .navigationTitle("Destinations")
            .navigationBarTitleDisplayMode(.inline)
        } else {
            NavigationView {
                ScrollView {
                    ForEach(searchResults) { mountain in
                        MountCard(mountain: mountain, journey: journey).padding(.vertical, 2)
                    }
                }
                .animation(.spring(), value: searchResults.count)
                .searchable(text: $searchText)
                .navigationTitle("Mountains")
            }
        }
    }
    

}
//
//struct MountainListScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        MountainListScreen()
//    }
//}
