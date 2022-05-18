//
//  Carousel.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct CardView: View{
    var body: some View{
        Rectangle()
            .fill(Color.pink)
            .frame(height: 200)
            .border(Color.black)
            .padding()
    }
}

struct Carousel: View {
    @State private var index = 0
    
    var body: some View {
        
        VStack(spacing: 0) {
            TabView(selection: $index) {
                ForEach((0..<3), id: \.self) { index in
                    MountCard()
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
