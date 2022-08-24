//
//  ItemDetailFormV2.swift
//  HiKit
//
//  Created by Aditya Cahyo on 22/08/22.
//

import SwiftUI

enum LogisticType {
    case group, personal
}

enum FormType {
    case edit, new
}

struct ItemDetailFormV2: View {
    @Environment(\.dismiss) var dismiss
    @Environment(\.managedObjectContext) var moc
    @State private var isPicExpand: Bool = false
    
    @State var itemName: String = ""
    @State var totalItem: Int = 1
    @State var notes: String = ""
    //    @State var dueDate: Date = Date.now
    //    @State var isSelectRemindMe: Bool = false
    //    @State var reminderDate: Date = Date.now
    @State var formState: FormType
    
    
    @ObservedObject var journey: Journey
    @State var logisticType: LogisticType = .group
    
    @State var groupItem: GroupItemDB = GroupItemDB()
    @State var personalItem: PersonalItemDB = PersonalItemDB()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State var selectedPIC: [User] = []
    
    var body: some View {
        let isGroup = logisticType == .group
        let isEditing = formState == .edit
        
        NavigationView {
            Form {
                HStack {
                    Text("Name")
                    Spacer()
                    TextField("Item Name", text: $itemName)
                        .multilineTextAlignment(.trailing)
                }
                
                HStack {
                    Text("Type")
                    Spacer()
                    Picker(selection: $logisticType) {
                        Text("Personal").tag(LogisticType.personal)
                        Text("Group").tag(LogisticType.group)
                    } label: {
                        Text("Type")
                    }.pickerStyle(.menu)
                }
                if isGroup {
                    HStack {
                        Text("PIC")
                        Spacer()
                        Label("Options", systemImage: "chevron.down")
                            .labelStyle(.iconOnly)
                            .rotationEffect(Angle(degrees: isPicExpand ? 180 : 0))
                    }
                    .onTapGesture {
                        withAnimation {
                            isPicExpand.toggle()
                        }
                    }
                    if isPicExpand {
                        HStack(alignment: .center) {
                            ForEach(journey.wrapMembers) { member in
                                NameChip(picName: member.wrapName, selected: selectedPIC.contains(member)).onTapGesture {
                                    if selectedPIC.contains(member) {
                                        selectedPIC = selectedPIC.filter { $0.id != member.id }
                                    } else {
                                        selectedPIC.append(member)
                                    }
                                }
                            }
                        }
                    }
                }
                Stepper(value: $totalItem, in: 1...100) {
                    HStack {
                        Text("Quantity")
                        Spacer()
                        Text("\(totalItem)").padding(.trailing)
                    }
                }
                HStack {
                    Text("Notes")
                    Spacer()
                    TextField("Add Notes",
                              text: $notes
                    )
                    .multilineTextAlignment(.trailing)
                }
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
                        dismiss()
                    }, label: {
                        Text("Cancel")
                    })
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(
                        action: {
                            if isGroup {
                                let itemDetail = isEditing ? groupItem : GroupItemDB(context: moc)
                                itemDetail.name = itemName
                                itemDetail.total = Int16(totalItem)
                                itemDetail.note = notes
                                itemDetail.journey = journey
                                itemDetail.pic = Set(selectedPIC)
                                try? moc.save()
                            } else {
                                let itemDetail = isEditing ? personalItem : PersonalItemDB(context: moc)
                                itemDetail.name = itemName
                                itemDetail.total = Int16(totalItem)
                                itemDetail.note = notes
                                itemDetail.journey = journey
                                try? moc.save()
                            }
                            dismiss()
                        },
                        label: {
                            Text("Save").fontWeight(.bold)
                        }
                    )
                }
            }
            .animation(.linear, value: isGroup)
        }
        .onAppear(perform: {
//            if selectedPIC.isEmpty {
//                selectedPIC = journey.wrapMembers
//            }
            if isEditing {
                itemName = isGroup ? groupItem.wrapName : personalItem.wrapName
                totalItem = Int(isGroup ? groupItem.total : personalItem.total)
                notes = isGroup ? groupItem.wrapNote : personalItem.wrapNote
            }
        })
        .navigationTitle(isEditing ? "Edit Item" : "New Item")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}


struct ItemDetailFormV2_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailFormV2(formState: .new, journey: Journey(), logisticType: .group)
    }
}

struct NameChip: View {
    var picName: String
    var selected: Bool
    
    var body: some View {
        HStack {
            Text(picName.prefix(1))
                .font(.footnote)
                .foregroundColor(.white)
                .background(
                    Circle()
                        .fill(Color.accentColor)
                        .frame(width: 25, height: 25, alignment: .center)
                )
                .offset(x: 5, y: 0)
            Text(picName)
                .font(.footnote)
                .padding(.horizontal, 10)
        }
        .background(
            RoundedRectangle(cornerRadius: 50)
                .fill(Color.accentColor.opacity(0.2))
                .frame(minHeight: 25)
        )
        .brightness(selected ? 0 : 0.4)
        .grayscale(selected ? 0 : 1)
    }
}
