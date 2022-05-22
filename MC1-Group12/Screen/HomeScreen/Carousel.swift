//
//  Carousel.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct Carousel: View {
    @State private var id: UUID = UUID()
    @ObservedObject var globalObj: HikingJourney
    
    var body: some View {
        let list = globalObj.journeyList.filter {!$0.isDone}
        
        VStack(spacing: 0) {
            TabView(selection: $id) {
                ForEach(list) { hiking in
                    MountCard(globalObj: globalObj, hikeDetail: hiking, mountain: hiking.mountain)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            HStack(spacing: 5) {
                ForEach(list, id: \.id) { item in
                    Circle()
                        .fill(id == item.id ? Color.darkGreen : Color.gray.opacity(0.4))
                        .frame(width: 10, height: 10)
                }
            }
        }
        .frame(height: 200)
        .onAppear(
            perform: {
                if (list.count != 0) {
                    id = list[0].id
                }
            }
        )
    }
}
