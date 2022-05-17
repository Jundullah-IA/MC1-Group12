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
    
    @ViewBuilder var headerPic: some View {
        HStack {
            Text("Person In Charge")
                .font(.callout)
                .foregroundColor(.black)
            
            Spacer()
            Text("\(counter)")
                .font(.callout)
                .foregroundColor(.black)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack {
                        Text("Name")
                        Spacer()
                        TextField("name", text: $emptyString)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    HStack {
                        Text("Total")
                        
                        Stepper(value: $counter1, in: 1...100) {
                            Text("\(counter1)") .padding(.leading, 130)
                        }
                    }
                    
                    HStack {
                        Text("Notes")
                        Spacer()
                        TextField("notes", text: $emptyString)
                            .multilineTextAlignment(.trailing)
                    }
                }
                
                Section(
                    header: headerPic,
                    
                    footer: Button(
                        action: {
                            counter += 1
                        }, label: {
                            Image(systemName: "plus.circle")
                            Text("Add PIC")
                                .font(.callout)
                        }
                    )

                ) {
                    ForEach(0...counter-1, id: \.self) {_ in
                        HStack {
                            TextField("Person", text: $emptyString)
                            
                            Button(
                                action: {
                                    if(counter != 1){counter -= 1}
                                }, label: {
                                    Image(systemName: "minus.circle")
                                        .foregroundColor(.red)
                                }
                            )
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
