//
//  Carousel.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct Carousel: View {
    @State private var id: String = ""
    var journeySet: [Journey]
    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $id) {
                ForEach(journeySet) { journey in
                    let getMountain: Mountain = MountainList.first(where: {$0.name == journey.wrapMountain}) ?? Mountain()
                    MountCard(mountain: getMountain, journey: journey)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            HStack(spacing: 5) {
                ForEach(journeySet, id: \.id) { item in
                    Circle()
                        .fill(id == item.wrapMountain ? Color.darkGreen : Color.gray.opacity(0.4))
                        .frame(width: 10, height: 10)
                }
            }
        }
        .frame(height: 200)
        .onAppear(
            perform: {
                if (journeySet.count != 0) {
                    id = journeySet[0].wrapMountain
                }
            }
        )
    }
}
