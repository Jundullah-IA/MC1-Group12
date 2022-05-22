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
    @State var isSelectRemindMe: Bool = false
    @State var reminderDate: Date = Date.now
    @State var formState: String = "Edit"
    
    @ObservedObject var globalObj: HikingJourney
    @State var hiking: Hiking
    var logisticType: String = "group"
    
    @State var groupItem: GroupItem
    @State var personalItem: PersonalItem
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    @State var selectedPIC: [String] = []
    
    var body: some View {
        let index = globalObj.journeyList.firstIndex(where: {$0.id == hiking.id}) ?? 0
        let indexGroupItem = globalObj.journeyList[index].groupLogistic.firstIndex(where: {$0.id == groupItem.id}) ?? 0
        let indexPersonalItem = globalObj.journeyList[index].personalLogistic.firstIndex(where: {$0.id == personalItem.id}) ?? 0
        
        NavigationView {
            List {
                Section {
                    HStack {
                        Text("Name")
                        Spacer()
                        TextField("item name",
                                  text: formState == "New" ?
                                  $itemName : (logisticType == "group" ?
                                               $groupItem.name :
                                                $personalItem.name
                                              )
                        )
                        .multilineTextAlignment(.trailing)
                        .disabled(formState == "Display" ? true : false)
                    }
                    
                    HStack {
                        Text("Total")
                        
                        Stepper(value: formState == "New" ? $totalItem : (
                            logisticType == "group" ? $groupItem.quantity : $personalItem.quantity
                        ),
                                in: 1...100) {
                            
                            if(formState == "New") {
                                Text("\(totalItem)")
                                    .padding(.leading, 180)
                            } else {
                                if(logisticType == "group") {
                                    Text("\(groupItem.quantity)")
                                        .padding(.leading, 180)
                                } else {
                                    Text("\(personalItem.quantity)")
                                        .padding(.leading, 180)
                                }
                            }
                        }
                                .disabled(formState == "Display" ? true : false)
                    }
                    
                    HStack {
                        Text("Notes")
                        Spacer()
                        TextField("notes",
                                  text: formState == "New" ?
                                  $notes : (logisticType == "group" ?
                                            $groupItem.notes :
                                                $personalItem.notes
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
                                    let color =  colorsPIC[groupItem.pic.firstIndex{$0.self == hiking.hiker[index]} ?? 0]

                                    if(formState == "New") {
                                        if(selectedPIC.contains(hiking.hiker[index])) {
                                            color.opacity(0.1)
                                        } else {
                                            Color.background
                                        }
                                    } else {
                                        if(groupItem.pic.contains(hiking.hiker[index])) {
                                            color.opacity(0.1)
                                        } else {
                                            Color.background
                                        }
                                    }
                                    
                                    HStack {
                                        Image(systemName: "person").font(.subheadline)
                                        Text(hiking.hiker[index]).font(.subheadline)
                                    }
                                    .padding(.horizontal, 10)
                                    .foregroundColor(selectedPIC.contains(hiking.hiker[index]) || groupItem.pic.contains(hiking.hiker[index]) ? color : .gray)
                                }
                                .cornerRadius(15)
                                .frame(width: 110, height: 35)
                                .onTapGesture {
                                    if(formState == "New") {
                                        if(selectedPIC.contains(hiking.hiker[index])) {
                                            selectedPIC = selectedPIC.filter() {
                                                $0 != hiking.hiker[index]
                                            }
                                        } else {
                                            selectedPIC.append(hiking.hiker[index])
                                        }
                                    } else {
                                        if(groupItem.pic.contains(hiking.hiker[index])) {
                                            groupItem.pic = groupItem.pic.filter() {
                                                $0 != hiking.hiker[index]
                                            }
                                        } else {
                                            groupItem.pic.append(hiking.hiker[index])
                                        }
                                    }
                                }
                                .disabled(formState == "Display" ? true : false)
                                
                            }
                        }
                    }
                    
                    
                }
                Button(role: .destructive, action: {
                    if logisticType == "group" {
                        globalObj.journeyList[index].groupLogistic.remove(at: indexGroupItem)
                    } else {
                        globalObj.journeyList[index].personalLogistic.remove(at: indexPersonalItem)
                    }
                    dismiss()
                }) {
                    Label("Delete item", systemImage: "trash").foregroundColor(.red)
                }
            }
            
            .padding(.top, 30)
            .listStyle(.grouped)
            
            .navigationTitle(formState == "New" ? "Add Item" : (formState == "Display" ? "Item Detail" : "Edit Item"))
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
                                } else {
                                    globalObj.journeyList[index].personalLogistic[indexPersonalItem] = personalItem
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
