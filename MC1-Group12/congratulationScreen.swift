//
//  congratulationScreen.swift
//  MC1-Group12
//
//  Created by Billi Umar Daeli on 21/05/22.
//

import SwiftUI

struct congratulationScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    
    var body: some View {
        VStack {
        VStack {
            Image ("congratulationScreen")
            }
        .scaleEffect(size)
        .opacity(opacity)
        .onAppear {
            withAnimation(.easeIn(duration: 0.5)){
                self.size = 1
                self.opacity = 1.0
            }
        }
        
        }
    }
}

struct congratulationScreen_Previews: PreviewProvider {
    static var previews: some View {
        congratulationScreen()
    }
}
