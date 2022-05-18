//
//  ItemDetailForm.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 12/05/22.
//

import SwiftUI

struct ItemDetailForm: View {
    @Environment(\.dismiss) var dismiss
    
    @State var emptyString: String = ""
    @State var totalItem: Int = 1
    @State var dueDate: Date = Date.now
    @State var counter: Int = 1
    @State var counter1: Int = 1
    @State var isSelectRemindMe: Bool = false
    @State var reminderDate: Date = Date.now
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    let persons = ["Sarach Princy Mipon", "Billi Umar Daeli", "Aditya Cahyo", "Franceka April", "Jundullah Ilhaq Aulia", "Mario Telepeta", "Afina R. Vinci"]
    @State var selectedPIC: [String] = [""]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack {
                        Text("Name")
                        Spacer()
                        TextField("item name", text: $emptyString)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    HStack {
                        Text("Total")
                        
                        Stepper(value: $counter1, in: 1...100) {
                            Text("\(counter1)") .padding(.leading, 180)
                        }
                    }
                    
                    HStack {
                        Text("Notes")
                        Spacer()
                        TextField("notes", text: $emptyString)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    HStack {
                        Text("Remind Me")
                        Spacer()
                        Toggle("", isOn: $isSelectRemindMe)
                    }
                    
                    if(isSelectRemindMe) {
                        HStack {
                            DatePicker(selection: $reminderDate, label: {Text("Date")})
                        }
                    }
                    
                    HStack {
                        Text("Person in charge")
                        Spacer()
                    }
                    
                    LazyVGrid(columns: columns) {
                        ForEach(0..<persons.count, id: \.self) {index in
                            ZStack {
                                Color.background
                                HStack {
                                    Image(systemName: "person")
                                    Text(persons[index])
                                }
                                .cornerRadius(15)
                            }
                            .cornerRadius(15)
                            .frame(width: 110, height: 35)
                        }
                    }
                }
                
//                Section(
//                    header:
//                        Text("Person In Charge")
////                            .font(.callout)
////                            .foregroundColor(.black)
//                    ,
//
//                    footer: Button(
//                        action: {
//                            self.selectedPIC.append("")
//                        }, label: {
//                            Image(systemName: "plus.circle")
//                            Text("Add PIC")
//                                .font(.callout)
//                        }
//                    )
//
//                ) {
//                    ForEach(0..<selectedPIC.count, id: \.self) {n in
//                        HStack {
//                            if(self.selectedPIC[n] != "") {
//                                Text("\(self.selectedPIC[n])")
//                            } else {
//                                Picker(
//                                    "Select PIC",
//                                    selection: self.$selectedPIC[n],
//                                    content: {
//                                        ForEach(persons, id: \.self) { person in
//                                            Text(person)
//                                        }
//                                    }
//                                ).pickerStyle(.menu)
//                            }
//
//                            Spacer()
//
//                            Button(
//                                action: {
//                                    if(selectedPIC.count != 1) { self.selectedPIC.remove(at: n)}
//                                    else {self.selectedPIC[n] = ""}
//                                }, label: {
//                                    Image(systemName: "minus.circle")
//                                        .foregroundColor(.red)
//                                }
//                            )
//                        }
//                    }
//                }
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

struct ItemDetailForm_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailForm()
    }
}
