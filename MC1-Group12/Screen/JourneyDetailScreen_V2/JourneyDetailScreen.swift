//
//  JourneyDetailScreen.swift
//  HiKit
//
//  Created by Aditya Cahyo on 18/08/22.
//

import SwiftUI

struct JourneyDetailScreen: View {
    @State var selection: Int = 0
    @State var scrolled: Bool = false
    
    let items: [String] =
    [
        "Group Logistics",
        "Personal Logistics"
    ]
    
    var body: some View {
        
        NavigationView {
            VStack {
                
                VStack {
                    if !scrolled {
                        JourneyBrief()
                    }
                    
                    SegmentedPicker(items: self.items, selection: self.$selection).padding(.top, 8)
                }.padding(.horizontal)
                
                
                List {
                    ForEach(0..<10) {_ in
                        ItemCard()
                    }
                    
                    .onDelete { indexSet in
                        print(indexSet)
                    }
                    
                    
                }.listStyle(.plain)
//                    .simultaneousGesture(DragGesture().onChanged({ _ in
//                        scrolled.toggle()
//                    }))
                    
                
            }
            .navigationTitle("Mahameru Trip")
        }
    }
}

struct JourneyDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        JourneyDetailScreen()
    }
}

struct JourneyBrief: View {
    var body: some View {
        let halfWidth = UIScreen.main.bounds.width / 2
        
        VStack {
            HStack {
                Image("rinjani")
                    .resizable()
                    .frame(maxWidth: halfWidth)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                VStack(alignment: .center) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Mahameru").font(.subheadline)
                            Text("17 Agustus 2022").font(.caption).foregroundColor(.accentColor)
                        }
                        Spacer()
                    }
                    
                    Spacer()
                    
                    Text("14045").font(.custom("", size: 38)).foregroundColor(.darkGreen).tracking(5)
                    
                    Spacer()
                    
                    HStack {
                        Text("OOO")
                        Spacer()
                        Button(action: {}) {
                            Label("Add Item", systemImage: "square.and.arrow.up").labelStyle(.iconOnly)
                        }.foregroundColor(.orange)
                    }
                    
                }
                .padding()
                .frame(maxWidth: halfWidth)
                .background(RoundedRectangle(cornerRadius: 16).stroke(Color.darkGreen.opacity(0.25)))
            }
            .frame(maxWidth: .infinity, maxHeight: 170)
            
        }
    }
}
