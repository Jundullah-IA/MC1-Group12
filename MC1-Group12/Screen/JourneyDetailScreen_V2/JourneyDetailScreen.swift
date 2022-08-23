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
    
    @State var showOptions: Bool = false
    @State private var selectedGroupItem: GroupItemDB? = nil
    @State private var selectedPersonalItem: PersonalItemDB? = nil
    
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
                    
                    Text("14045")
                        .font(.custom("", size: 38))
                        .foregroundColor(.darkGreen)
                        .tracking(5)
                    
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
        let groupList = journey.wrapGroupItems
        let personalList = journey.wrapPersonalItems
        let isGroup = selection == 0
        
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
                if isGroup {
                    ForEach(groupList, id: \.self) {item in
                        GroupItemCard(itemDetail: item)
                            .onTapGesture {
                                selectedGroupItem = item
                            }
                    }
                    .onDelete {indexSet in
                        journey.removeFromGroupItems(groupList[indexSet.first ?? 0])
                        try? moc.save()
                    }
                    
                } else {
                    ForEach(personalList, id: \.self) {item in
                        PersonalItemCard(itemDetail: item)
                            .onTapGesture {
                                selectedPersonalItem = item
                            }
                    }
                    .onDelete {indexSet in
                        journey.removeFromPersonalItems(personalList[indexSet.first ?? 0])
                        try? moc.save()
                    }
                }
            }
            .listStyle(.plain)
            .sheet(item: $selectedGroupItem) {item in
                ItemDetailFormV2(journey: journey, logisticType: .group, groupItem: item)
            }
            .sheet(item: $selectedPersonalItem) {item in
                ItemDetailFormV2(journey: journey, logisticType: .personal, personalItem: item)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu {
                        Button("Add New Item", action: {})
                        Button {
                            
                        } label: {
                            Label("Add", systemImage: "add")
                        }

                        Divider()
                        Menu("Sort By") {
                            Button("Created Date", action: {})
                            Button("Adjust Order", action: {})
                            Button("Cancel", action: {})
                        }
                        Divider()
                        Button("Edit Trip", action: {})
                        Button("Leave Trip", action: {})
                        Button("Delete Trip", role: .destructive, action: {})
                    } label: {
                        Label("Options", systemImage: "ellipsis.circle")
                    }
                }
            }
        }
        
        .navigationTitle("\(journey.wrapMountain) Trip")
        
    }
}

struct JourneyDetailScreen_Previews: PreviewProvider {
    static var previews: some View {
        JourneyDetailScreen(journey: Journey())
    }
}
