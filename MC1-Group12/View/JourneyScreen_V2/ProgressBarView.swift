//
//  ProgressBarView.swift
//  HiKit
//
//  Created by Billi Umar Daeli on 24/08/22.
//

import SwiftUI


struct GradientProgressStyle<Stroke: ShapeStyle, Background: ShapeStyle>: ProgressViewStyle {
    var stroke: Stroke
    var fill: Background
    var caption: String = ""
    var cornerRadius: CGFloat = 10
    var height: CGFloat = 10
    var animation: Animation = .easeInOut
    
    func makeBody(configuration: Configuration) -> some View {
        let fractionCompleted = configuration.fractionCompleted ?? 0
        
        return VStack {
            ZStack(alignment: .topLeading) {
                GeometryReader { geo in
                    Rectangle()
                        .fill(fill)
                        .frame(maxWidth: geo.size.width * CGFloat(fractionCompleted))
                        .cornerRadius(10)
//                        .animation(animation)
                }
            }
            .frame(height: height)
            .cornerRadius(cornerRadius)
            .overlay(
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(stroke, lineWidth: 0)
            )
            .background(Color.background)
            
            
        }
    }
}



struct ProgressBarView: View {
    var valueGroup : Int = 0
    var totalGroup : Int = 0
    var valuePersonal : Int = 0
    var totalPersonal : Int = 0
    
    @State private var gradient = LinearGradient(
        gradient: Gradient(colors: [(Color.darkGreen), (Color.darkGreen), (Color.darkGreen)]),
        startPoint: .topLeading,
        endPoint: .bottomTrailing
    )
    
//    @State private var progress: Float = 0
    
    var body: some View {
        
 
        
        let gradientStyle = GradientProgressStyle(
            stroke: gradient,
            fill: gradient,
            caption: "Some fancy caption"
        )
        
        VStack (alignment: .leading, spacing: -2) {
            Text("Group Logistic")
                .foregroundColor(Color.darkGreen)
                .font(.body)
            ProgressView(value: Float(valueGroup), total: Float(totalGroup)).progressViewStyle(gradientStyle).frame(height:20)
                .contentShape(Rectangle())
            //                .onAppear {
            //                    progress = ProgressBarValue().getCheckdList()
            //                }
            
            Text("Personal Logistic")
                .foregroundColor(Color.darkGreen)
                .font(.body)
            ProgressView(value: Float(valuePersonal), total: Float(totalPersonal)).progressViewStyle(gradientStyle).frame(height:20)
                .contentShape(Rectangle())
        }
    }
}
//
//struct ProgressBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProgressBarView(value: .constant(1), total: .constant(1))
//    }
//}


//struct ProgressBarView: View {
//    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//    }
//}
//
//struct ProgressBarView_Previews: PreviewProvider {
//    static var previews: some View {
//        ProgressBarView()
//    }
//}
