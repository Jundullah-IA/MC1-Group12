//
//  ItemDetailForm.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 12/05/22.
//

import SwiftUI

struct ItemDetailForm: View {
    @Environment(\.dismiss) var dismiss
    
    @State var itemName: String = ""
    @State var totalItem: Int = 1
    @State var notes: String = ""
    @State var dueDate: Date = Date.now
    @State var counter: Int = 1
    @State var counter1: Int = 1
    @State var isSelectRemindMe: Bool = false
    @State var reminderDate: Date = Date.now
    @State var formState: String = "Edit"
    
    @ObservedObject var globalObj: HikingJourney
    @State var hiking: Hiking
    var logisticType: String = "group"
    
    var groupItem: GroupItem = GroupItem()
    var personalItem: PersonalItem = PersonalItem()
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State var selectedPIC: [String] = []
    
    var body: some View {
        let index = globalObj.journeyList.firstIndex(where: {$0.id == hiking.id}) ?? 0
        let indexGroupItem = globalObj.journeyList[index].groupLogistic.firstIndex(where: {$0.id == groupItem.id}) ?? 0
        let indexPersonalItem = globalObj.journeyList[index].groupLogistic.firstIndex(where: {$0.id == personalItem.id}) ?? 0
        
        NavigationView {
            List {
                Section {
                    HStack {
                        Text("Name")
                        Spacer()
                        TextField("item name",
                                  text: formState == "New" ?
                                  $itemName : (logisticType == "group" ?
                                                $hiking.groupLogistic[indexGroupItem].name :
                                                $hiking.personalLogistic[indexPersonalItem].name
                                              )
                        )
                            .multilineTextAlignment(.trailing)
                            .disabled(formState == "Display" ? true : false)
                    }
                    
                    HStack {
                        Text("Total")
                        
                        Stepper(value: $counter1,
                                in: 1...100) {
                            Text("\(counter1)")
                                
                                .padding(.leading, 180)
                        }
                        .disabled(formState == "Display" ? true : false)
                    }
                    
                    HStack {
                        Text("Notes")
                        Spacer()
                        TextField("notes",
                                  text: formState == "New" ?
                                  $notes : (logisticType == "group" ?
                                               $hiking.groupLogistic[indexGroupItem].notes :
                                                $hiking.personalLogistic[indexPersonalItem].notes
                                              )
                        )
                            .multilineTextAlignment(.trailing)
                            .disabled(formState == "Display" ? true : false)
                    }
                    
//                    HStack {
//                        Text("Remind Me")
//                        Spacer()
//                        Toggle("", isOn: $isSelectRemindMe)
//                    }
//
//                    if(isSelectRemindMe) {
//                        HStack {
//                            DatePicker(selection: $reminderDate, label: {Text("Date")})
//                        }
//                    }
                    
                    if(logisticType == "group") {
                        HStack {
                            Text("Person in charge")
                            Spacer()
                        }
                        
                        LazyVGrid(columns: columns) {
                            ForEach(0..<hiking.hiker.count, id: \.self) {index in
                                ZStack {
                                    if(selectedPIC.contains(hiking.hiker[index])) {
                                        Color.green
                                    } else {
                                        Color.background
                                    }
                                    
                                    HStack {
                                        Image(systemName: "person")
                                        Text(hiking.hiker[index])
                                    }
                                    .cornerRadius(15)
                                }
                                .disabled(formState == "Display" ? true : false)
                                .cornerRadius(15)
                                .frame(width: 110, height: 35)
                                .onTapGesture {
                                    if(selectedPIC.contains(hiking.hiker[index])) {
                                        selectedPIC = selectedPIC.filter() {
                                            $0 != hiking.hiker[index]
                                        }
                                    } else {
                                        selectedPIC.append(hiking.hiker[index])
                                    }
                                }
                            }
                        }
                    }
                }
            }
            
            .padding(.top, 57)
            .listStyle(.grouped)
            
            .navigationTitle("Item Details")
            .navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.all)
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
                            if(formState == "Display") {
                                formState = "Edit"
                            } else if(formState == "Edit") {
                                if(logisticType == "group") {
                                    globalObj.journeyList[index].groupLogistic[indexGroupItem] = groupItem
                                }
                                
                                dismiss()
                            } else {
                                if(logisticType == "group") {
                                    globalObj.journeyList[index].groupLogistic.append(GroupItem(
                                        name: itemName,
                                        quantity: totalItem,
                                        notes: notes,
                                        pic: selectedPIC))
                                } else {
                                    globalObj.journeyList[index].personalLogistic.append(PersonalItem(
                                        name: itemName,
                                        quantity: totalItem,
                                        notes: notes))
                                }
                                
                                dismiss()
                            }
                        },
                        label: {
                            if(formState == "Display") {
                                Text("Edit").fontWeight(.bold)
                            } else {
                                Text("Save").fontWeight(.bold)
                            }
                        }
                    )
                }
            }
        }
    }
}

//struct ItemDetailForm_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemDetailForm()
//    }
//}
