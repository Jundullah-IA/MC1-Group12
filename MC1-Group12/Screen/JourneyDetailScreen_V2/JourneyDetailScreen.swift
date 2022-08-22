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
    @ObservedObject var journey: Journey = Journey()
    @Environment(\.managedObjectContext) var moc
    
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
                        HStack {
                            ForEach(Array(journey.wrapMembers.prefix(3).enumerated()), id: \.element) {index, pic in
                                ProfilePic(name: pic.wrapName, colorCode: [.indigo, .mint, .cyan, .teal][(index + 1) % 3])
                                        .offset(x: index > 0 ? CGFloat(index * -12) : 0, y: 0)
                                        .zIndex(Double(journey.wrapMembers.count - index))
                                }
                            if (journey.wrapMembers.count > 3) {
                                ProfilePic(name: "+\(journey.wrapMembers.count - 3)", colorCode: .gray).offset(x: -45)
                            }
                        }
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
                SegmentedPicker(items: self.items, selection: self.$selection)
                    .padding(.top, 8)
            }
            .padding(.horizontal)
            .animation(.linear(duration: 0.25), value: scrolled)
            
            List {
                let groupList = journey.wrapGroupItems
                let personalList = journey.wrapPersonalItems
                let isGroup = selection == 0
                
                if isGroup {
                    ForEach(groupList, id: \.self) {item in
                        GroupItemCard(itemDetail: item)
                    }
                    .onDelete {indexSet in
                        journey.removeFromGroupItems(groupList[indexSet.first ?? 0])
                        try? moc.save()
                    }
                } else {
                    ForEach(personalList, id: \.self) {item in
                        PersonalItemCard(itemDetail: item)
                    }
                    .onDelete {indexSet in
                        journey.removeFromPersonalItems(personalList[indexSet.first ?? 0])
                        try? moc.save()
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
