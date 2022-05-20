//
//  Carousel.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct Carousel: View {
    @State private var index = 0
    var runingHikingJourney: [Hiking]?
    
    var body: some View {
        
        VStack(spacing: 0) {
            TabView(selection: $index) {
                ForEach(runingHikingJourney!) { hiking in
                    MountCard(planCard: true, hikingDate: hiking.date)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            HStack(spacing: 5) {
                ForEach((0..<3), id: \.self) { index in
                    Circle()
                        .fill(index == self.index ? Color.darkGreen : Color.gray.opacity(0.4))
                        .frame(width: 10, height: 10)
                }
            }
        }
        .frame(height: 200)
    }
}

struct Carousel_Previews: PreviewProvider {
    static var previews: some View {
        Carousel()
    }
}
