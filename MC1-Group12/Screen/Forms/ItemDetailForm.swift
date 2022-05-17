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
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Item Name")
                    .font(.callout)
                    .foregroundColor(.black)
                ) {
                    TextField("", text: $emptyString)
                }
                
                Section(header: Text("Person In Charge")
                    .font(.callout)
                    .foregroundColor(.black)
                ) {
                    TextField("", text: $emptyString)
                }
                
                Section() {
                    Stepper(
                        value: $totalItem,
                        in: 1...100,
                        label: {
                            Text("AMOUNT")
                                .font(.callout)
                                .foregroundColor(.black)

                            
                            Text("\(totalItem)")
                                .padding(.leading, 60)
                                .font(.callout)
                                .foregroundColor(.black)
                        }
                    )
                }
                
                Section(header: Text("Notes")
                    .font(.callout)
                    .foregroundColor(.black)
                ) {
                    TextEditor(text: $emptyString)
                }
            }
            
            .padding(.top, 60)
            
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
