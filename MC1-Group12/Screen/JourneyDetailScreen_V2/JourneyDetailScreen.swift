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
    var journey: Journey = Journey()
    
    let items: [String] =
    [
        "Group Logistics",
        "Personal Logistics"
    ]
    
    let halfWidth = UIScreen.main.bounds.width / 2
    
    var viewJourneyBrief: some View {
        VStack {
            HStack {
                Image("rinjani")
                    .resizable()
                    .frame(maxWidth: halfWidth)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                VStack(alignment: .center) {
                    HStack {
                        VStack(alignment: .leading) {
                            Text("\(journey.wrapMountain)").font(.subheadline)
                            Text("\(formatDate(journey.wrapDate))").font(.caption).foregroundColor(.accentColor)
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
    
    var body: some View {
        
            VStack {
                
                VStack {
                    if !scrolled {
                        viewJourneyBrief
                    }
                    
                    SegmentedPicker(items: self.items, selection: self.$selection).padding(.top, 8)
                }.padding(.horizontal)
                
                
                List {
                    if selection == 0 {
                        ForEach<[GroupItemDB], GroupItemDB, GroupItemCard>(journey.wrapGroupItems, id: \.self) {item in
                            GroupItemCard(itemDetail: item)
                        }
                        .onDelete { indexSet in
                            print(indexSet)
                        }
                    } else {
                        ForEach<[PersonalItemDB], PersonalItemDB, PersonalItemCard>(journey.wrapPersonalItems, id: \.self) {item in
                            PersonalItemCard(itemDetail: item)
                        }
                        .onDelete { indexSet in
                            print(indexSet)
                        }
                    }

                    

                    
                    
                }.listStyle(.plain)

            }
            .navigationTitle("\(journey.wrapMountain) Trip")
        
    }
}

struct JourneyDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        JourneyDetailScreen(journey: Journey())
    }
}
