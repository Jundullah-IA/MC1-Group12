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
    
    @State var itemName: String = ""
    @State var totalItem: Int = 1
    @State var notes: String = ""
    @State var dueDate: Date = Date.now
    @State var isSelectRemindMe: Bool = false
    @State var reminderDate: Date = Date.now
    @State var formState: FormType = .edit
    
    @ObservedObject var journey: Journey
    var logisticType: LogisticType
    
    @State var groupItem: GroupItemDB = GroupItemDB()
    @State var personalItem: PersonalItemDB = PersonalItemDB()
    
    
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
            .onAppear(perform: {
                itemName = isGroup ? groupItem.wrapName : personalItem.wrapName
                totalItem = Int(isGroup ? groupItem.total : personalItem.total)
                notes = isGroup ? groupItem.wrapNote : personalItem.wrapNote
            })
            .navigationTitle(isEditing ? "Edit Item" : "Create Item")
            .navigationBarTitleDisplayMode(.inline)
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
                                let itemDetail = groupItem
                                itemDetail.name = itemName
                                itemDetail.total = Int16(totalItem)
                                itemDetail.note = notes
                                try? moc.save()
                            } else {
                                let itemDetail = personalItem
                                itemDetail.name = itemName
                                itemDetail.total = Int16(totalItem)
                                itemDetail.note = notes
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
        }
    }
}
//
//struct ItemDetailFormV2_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemDetailFormV2(groupItem: GroupItemDB(), personalItem: PersonalItemDB())
//    }
//}
