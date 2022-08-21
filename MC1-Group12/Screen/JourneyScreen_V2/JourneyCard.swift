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
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black.opacity(0.5), lineWidth: 1)
                .background(Color.white)
            
            VStack(alignment: .leading) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(formatDate(inDate: journey.wrapDate))")
                            .foregroundColor(Color.accentColor)
                        .font(.footnote)
                        
                        Text("\(journey.wrapMountain)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color.darkGreen)
                    }
                    
                    Spacer()
                    
                    Text("In 8d")
                        .padding(.vertical, 5)
                        .padding(.horizontal, 7)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.red.opacity(0.3))
                        )
                }
                
//                ProfilePic(name: journey.wrapMembers[0].getName(), colorCode: .indigo)
                
                HStack {
                    if(journey.wrapMembers.count < 3) {
                        ForEach(journey.wrapMembers) {pic in
                            ProfilePic(name: pic.wrapName, colorCode: [.indigo, .mint, .cyan, .teal].randomElement()!)
                        }
                    } else {
                        ProfilePic(name: journey.wrapMembers[0].getName(), colorCode: .indigo)
                        ProfilePic(name: journey.wrapMembers[1].getName(), colorCode: .cyan)
                        ProfilePic(name: journey.wrapMembers[2].getName(), colorCode: .mint)
                        ProfilePic(name: "+\(journey.wrapMembers.count - 3)", colorCode: .gray)
                    }
                }
                
                Text("Group progress")
                    .foregroundColor(Color.darkGreen)
                    .font(.body)
                
                ZStack {
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10, style: .circular)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.gray)
                            .opacity(0.1)
                        
                        RoundedRectangle(cornerRadius: 10, style: .circular)
                            .frame(maxWidth: 70)
                            .foregroundColor(Color.accentColor)
                    }
                    
                    HStack {
                        Text("45%")
                    }
                }
                
                Text("Individual progress")
                    .foregroundColor(Color.darkGreen)
                    .font(.body)
                
                ZStack {
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 10, style: .circular)
                            .frame(maxWidth: .infinity)
                            .foregroundColor(.gray)
                            .opacity(0.1)
                        
                        RoundedRectangle(cornerRadius: 10, style: .circular)
                            .frame(maxWidth: 70)
                            .foregroundColor(Color.accentColor)
                    }
                    
                    HStack {
                        Text("45%")
                    }
                }

            }.padding(12)
        }.padding(.horizontal, 13).padding(.bottom, 9)
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
