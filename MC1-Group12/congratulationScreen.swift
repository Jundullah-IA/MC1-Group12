//
//  congratulationScreen.swift
//  MC1-Group12
//
//  Created by Billi Umar Daeli on 21/05/22.
//

import SwiftUI

//struct CongratulationScreen: View {
//    @State private var isActive = false
//    @State private var size = 0.5
//    @State private var opacity = 0.5
//
//    var body: some View {
//        VStack {
//            VStack {
//                Image("congratulationScreen")
//                    .clipShape(RoundedRectangle(cornerRadius: 20))
//                    .ignoresSafeArea()
//            }
//            .scaleEffect(size)
//            .opacity(opacity)
//            .onAppear {
//                withAnimation(.linear(duration: 0.5)){
//                    self.size = 1
//                    self.opacity = 1.0
//                }
//            }
//        }
//    }
//}

//struct CongratulationScreen_Previews: PreviewProvider {
//    static var previews: some View {
//        CongratulationScreen()
//    }
//}

struct TestView: View {
    
    @State var loading = false
    @State var num = 7
    @State var moveToDetail = false
    var body: some View {
        if loading{
            BridgeView(movetoDetail: $moveToDetail, isloading: $loading)
        } else {
            NavigationView {
                ZStack {
                    Text("Hello, world!")
                        .padding()
                        .onTapGesture {
                            withAnimation {
                                loading.toggle()
                            }
                    }
    //                NavigationLink(@)
                    NavigationLink(isActive: $moveToDetail) {
                        DetailView(num: $num)
                    } label: {
                        EmptyView()
                    }
                }
                .navigationTitle("Test")
            }
        }
        
    }
}

struct BridgeView: View {
    
    @State var rotate = 0
    @Binding var movetoDetail : Bool
    @Binding var isloading : Bool
    
    var body: some View {
        Text("BridgeView")
            .rotationEffect(Angle(degrees: Double(rotate)))
            .onTapGesture(perform: {
                withAnimation {
                    rotate = 360
                }
                DispatchQueue.main.asyncAfter(deadline: .now()+2) {
                    isloading.toggle()
                    movetoDetail.toggle()
                }
            })
            .padding()
    }
}


struct DetailView: View {
    
    @Binding var num : Int
    var body: some View {
        Text("DetailView! nuum nya \(num)")
            .padding()
    }
}
struct TestView_Previews: PreviewProvider {
    static var previews: some View {
        TestView()
    }
}
