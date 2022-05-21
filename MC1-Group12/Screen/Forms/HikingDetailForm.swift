//
//  HikingDetailForm.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 11/05/22.
//

import SwiftUI

struct HikingDetailForm: View {

    @Environment(\.dismiss) var dismiss
    @ObservedObject var globalObj: HikingJourney
    @State var mountain: Mountain
    @State var tripDate: Date = Date.now
    @State var participants: [String] = [""]
    
    @ViewBuilder var headerParticipant: some View {
        HStack {
            Text("Participants")
                .font(.callout)
                .foregroundColor(.black)

            Spacer()
            Text("\(participants.count)")
                .font(.callout)
                .foregroundColor(.black)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    HStack {
                        Text("Destination")
                        Spacer()
                        TextField("Destination", text: $mountain.name)
                            .multilineTextAlignment(.trailing)
                            .disabled(true)
                    }
                    
                    DatePicker(selection: $tripDate, label: {Text("Date")})
                }
                
                Section(
                    header: headerParticipant,
                    
                    footer: Button(
                        action: {
                            self.participants.append("")
                        }, label: {
                            HStack {
                                Image(systemName: "plus.circle")
                                Text("Add Participant")
                                    .font(.callout)
                            }.foregroundColor(.blue)
                        }
                    )
                ) {
                    ForEach(0..<participants.count, id: \.self) {n in
                        HStack {
                            TextField("Particpant \(n+1)", text: self.$participants[n])
                                
                            Button(
                                action: {
                                    if(participants.count != 1) { self.participants.remove(at: n)}
                                    else {self.participants[n] = ""}
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
            
            .navigationTitle("Hiking Details")
            .navigationBarTitleDisplayMode(.inline)
            .edgesIgnoringSafeArea(.all)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(
                        action: {
                            dismiss()
                        },
                        label: { Text("Cancel") }
                    )
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(
                        action: {
                            func qtyCount(_ item: String) -> Int {
                                switch item {
                                case "Flysheet":
                                    return 3
                                case "Portable Gas", "Raffia rope":
                                    return 2
                                default:
                                    return 1
                                }
                            }
                            let groupLog = mountain.essentials.groupLogistic.map { items -> GroupItem in
                                let list: GroupItem = GroupItem(name: items, quantity: qtyCount(items), notes: items == "Tents" ? "For \(participants.count) people" : "")
                                return list
                            }
                            let personLog = mountain.essentials.personalLogistic.map { items -> PersonalItem in
                                let list: PersonalItem = PersonalItem(name: items, quantity: 1)
                                return list
                            }
                            globalObj.journeyList.append(Hiking(
                                mountain: mountain, date: tripDate, hiker: participants, groupLogistic: groupLog, personalLogistic: personLog
                            ))

                            dismiss()
                        },
                        label: { Text("Save").fontWeight(.bold) }
                    )
                }
            }
            
        }
    }
}

//struct HikingDetailForm_Previews: PreviewProvider {
//    static var previews: some View {
//        HikingDetailForm()
//    }
//}
