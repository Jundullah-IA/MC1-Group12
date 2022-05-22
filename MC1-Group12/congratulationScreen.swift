//
//  congratulationScreen.swift
//  MC1-Group12
//
//  Created by Billi Umar Daeli on 21/05/22.
//

import SwiftUI

struct CongratulationScreen: View {
    @State private var size = 0.5
    @State private var opacity = 0.5
    
    @ObservedObject var globalObj : HikingJourney
    
    var body: some View {
        VStack {
            VStack {
                Image("congratulationScreen")
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                    .ignoresSafeArea()
            }
            .scaleEffect(size)
            .opacity(opacity)
            .onAppear {
                withAnimation(.linear(duration: 0.5)){
                    self.size = 1
                    self.opacity = 1.0
                }
                DispatchQueue.main.asyncAfter(deadline: .now()+3) {
                    globalObj.showCongrats = false
                }
                
            }
            .onTapGesture {
                globalObj.showCongrats = false
            }
        }
    }
}
