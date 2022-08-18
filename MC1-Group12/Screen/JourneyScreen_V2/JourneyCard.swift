//
//  JourneyCard.swift
//  HiKit
//
//  Created by Jundullah Ilhaq Aulia on 14/08/22.
//

import SwiftUI

struct JourneyCard: View {
    var journey: Journey = Journey()
    
    var body: some View {
        HStack {
            VStack {
                HStack {
                    Text("\(formatDate(inDate: journey.wrapDate))")
                    
                    Spacer()
                    
                    Text("In 8d")
                }
                
                HStack {
                    Text("\(journey.wrapMountain)")
                    Spacer()
                }
                
                HStack {
                    if(journey.wrapMembers.count < 3) {
                        ForEach(journey.wrapMembers) {pic in
                            Text("\(pic.wrapName)")
                        }
                    } else {
                        Text("\(journey.wrapMembers[0].wrapName)")
                        Text("\(journey.wrapMembers[1].wrapName)")
                        Text("\(journey.wrapMembers[2].wrapName)")
                        Text("+\(journey.wrapMembers.count - 3)")
                    }
                    
                    Spacer()
                }
                
                VStack(alignment: .leading) {
                    Text("Group progress")
                    
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.gray)
                            .opacity(0.5)
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(maxWidth: 70)
                        
                        Text("45%")
                    }
                    
                    Text("Individual progress")
                    
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.gray)
                            .opacity(0.5)
                        
                        RoundedRectangle(cornerRadius: 10)
                            .frame(maxWidth: 70)
                        
                        Text("45%")
                    }
                }
            }.padding(5)
        }
        .background {
            RoundedRectangle(cornerRadius: 25)
                .foregroundColor(.white)
                .opacity(0.1)
                .border(Color.gray)
        }
        .padding(.horizontal)
    }
    
    func formatDate(inDate: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, d MMMM yyyy"
        return formatter.string(from: inDate)
    }
}

struct JourneyCard_Previews: PreviewProvider {
    static var previews: some View {
        JourneyCard()
    }
}
