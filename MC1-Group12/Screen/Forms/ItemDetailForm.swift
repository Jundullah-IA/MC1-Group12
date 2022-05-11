//
//  ItemDetailForm.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 12/05/22.
//

import SwiftUI

struct ItemDetailForm: View {
    @State var emptyString: String = ""
    @State var totalItem: Int = 1
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Item Name")) {
                    TextField("Item name", text: $emptyString)
                }
                
                Section(header: Text("Person In Charge")) {
                    TextField("Person in charge", text: $emptyString)
                }
                
                Section() {
                    Stepper(
                        value: $totalItem,
                        in: 1...100,
                        label: {
                            Text("Total Item")
                            
                            Text("\(totalItem)")
                                .padding(.leading, 60)
                        }
                    )
                }
                
                Section(header: Text("Notes")) {
                    TextField("Notes", text: $emptyString)
                }
            }
            
            .padding(.top, 70)
            
            .navigationTitle("Item Details")
            .navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.all)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {
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
