//
//  Carousel.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct Carousel: View {
    @State private var index = 0
    @ObservedObject var globalObj: HikingJourney
    
    var body: some View {
        let list = globalObj.journeyList.filter {$0.isDone}
        VStack(spacing: 0) {
            TabView(selection: $index) {
                ForEach(globalObj.journeyList) { hiking in
                    MountCard(globalObj: globalObj, hikeDetail: hiking, mountain: hiking.mountain)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            HStack(spacing: 5) {
                ForEach((0..<globalObj.journeyList.count), id: \.self) { index in
                    Circle()
                        .fill(index == self.index ? Color.darkGreen : Color.gray.opacity(0.4))
                        .frame(width: 10, height: 10)
                }
            }
        }
        .frame(height: 200)
    }
}

//struct Carousel_Previews: PreviewProvider {
//    static var previews: some View {
//        Carousel()
//    }
//}
