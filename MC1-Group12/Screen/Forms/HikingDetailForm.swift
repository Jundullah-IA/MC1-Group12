//
//  HikingDetailForm.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 11/05/22.
//

import SwiftUI

struct HikingDetailForm: View {
    @Environment(\.dismiss) var dismiss
    
    @State var destination: String = "Rinjani"
    @State var tripDate: Date = Date.now
    @State var totalParticipant: Int = 1
    @State var participantName: String = ""
    
    var body: some View {
        NavigationView {
            Form {
                Section {
                    HStack {
                        Text("Destination")
                        Spacer()
                        TextField("Destination", text: $destination)
                            .multilineTextAlignment(.trailing)
                    }
                    
                    DatePicker(selection: $tripDate, label: {Text("Date")})
                }
                
                Section(
                    header: Text("Participants \t\t\t\t\t\t \(totalParticipant)")
                        .font(.callout)
                        .foregroundColor(.black),
                    
                    footer: Button(
                        action: {
                            totalParticipant += 1
                        }, label: {
                            Image(systemName: "plus.circle")
                            Text("Add Participant")
                                .font(.callout)
                        }
                    )
                ) {
                    List() {
                        ForEach(1...totalParticipant, id: \.self) {a in
                            HStack {
                                TextField("Particpant \(a)", text: $participantName)
                                
                                Spacer()
                                
                                Button(
                                    action: {
                                        if(totalParticipant != 1){totalParticipant -= 1}
                                    }, label: {
                                        Image(systemName: "minus.circle")
                                            .foregroundColor(.red)
                                    }
                                )
                            }
                        }
                    }
                }
            }
            .padding(.top, 60)
            
            .navigationTitle("Hiking Details")
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

struct HikingDetailForm_Previews: PreviewProvider {
    static var previews: some View {
        HikingDetailForm()
    }
}
