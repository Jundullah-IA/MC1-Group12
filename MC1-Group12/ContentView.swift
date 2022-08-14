//
//  ContentView.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 11/05/22.
//

import SwiftUI

enum Tabs: String, CaseIterable, Identifiable {
    case home, mountains
    var id: Self { self }
}

struct ContentView: View {
    @State private var selectedTab: Tabs = .home
    
    var body: some View {
            TabView(selection: $selectedTab) {
                HomeScreen()
                    .tabItem {
                        Label("Home", systemImage: "globe.asia.australia.fill")
                    }
                    .tag(Tabs.home)
                
                MountainListScreen()
                    .tabItem {
                        Label("Mountains", systemImage: "triangle.tophalf.filled")
                    }
                    .tag(Tabs.mountains)
            }
            .onAppear {
                // correct the transparency bug for Tab bars
                let tabBarAppearance = UITabBarAppearance()
                tabBarAppearance.configureWithOpaqueBackground()
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
