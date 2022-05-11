//
//  HikingDetailForm.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 11/05/22.
//

import SwiftUI

struct HikingDetailForm: View {
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
                    
                    Stepper(
                        value: $totalParticipant,
                        in: 1...100,
                        label: {
                            Text("Total Participant")
                            
                            Text("\(totalParticipant)")
                                .padding(.leading, 30)
                        }
                    )
                }
                
                Section(header: Text("Participants' Name")) {
                    List() {
                        ForEach(1...totalParticipant, id: \.self) {a in
                            TextField("Particpant \(a)", text: $participantName)
                        }
                    }
                }
            }
            .padding(.top, 70)
            
            .navigationTitle("Hiking Details")
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

struct HikingDetailForm_Previews: PreviewProvider {
    static var previews: some View {
        HikingDetailForm()
    }
}
