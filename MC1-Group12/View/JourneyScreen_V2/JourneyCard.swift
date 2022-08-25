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
        let progressGroup = journey.wrapGroupItems.filter { $0.isDone }.count
        let totalGroup = journey.wrapGroupItems.count
        let progressPersonal = journey.wrapPersonalItems.filter { $0.isDone }.count
        let totalPersonal = journey.wrapPersonalItems.count
        
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.black.opacity(0.5), lineWidth: 1)
                .background(Color.white)
            
            VStack(alignment: .leading)
            {
                HStack {
                    VStack(alignment: .leading) {
                        Text("\(formatDate(journey.wrapDate))")
                            .foregroundColor(Color.accentColor)
                        .font(.footnote)
                        
                        Text("\(journey.wrapMountain)")
                            .font(.title2)
                            .bold()
                            .foregroundColor(Color.darkGreen)
                    }
                    
                    Spacer()
                    
                    TimerCountdown(hikingDate: journey.wrapDate)
                        .padding(.vertical, 5)
                        .padding(.horizontal, 7)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .foregroundColor(Color.red.opacity(0.3))
                        )
                }
                    
                HStack {
                    ForEach(Array(journey.wrapMembers.prefix(3).enumerated()), id: \.element) {index, pic in
                        ProfilePic(name: pic.wrapName, colorCode: [.indigo, .mint, .cyan, .teal][(index + 1) % 3])
                                .offset(x: index > 0 ? CGFloat(index * -12) : 0, y: 0)
                                .zIndex(Double(journey.wrapMembers.count - index))
                        }
                    if (journey.wrapMembers.count > 3) {
                        ProfilePic(name: "+\(journey.wrapMembers.count - 3)", colorCode: .gray).offset(x: -45)
                    }
                }
                
//                Text("Group progress")
//                    .foregroundColor(Color.darkGreen)
//                    .font(.body)
                ProgressBarView(valueGroup: progressGroup, totalGroup: totalGroup, valuePersonal: progressPersonal, totalPersonal: totalPersonal)
                
//                ZStack {
////                    ProgressBarView()
//                    ZStack(alignment: .leading) {
//
//                        RoundedRectangle(cornerRadius: 10, style: .circular)
//                            .frame(maxWidth: .infinity)
//                            .foregroundColor(.gray)
//                            .opacity(0.1)
//
//                        RoundedRectangle(cornerRadius: 10, style: .circular)
//                            .frame(maxWidth: 70)
//                            .foregroundColor(Color.accentColor)
//                    }
//
//                    HStack {
//                        Text("45%")
//                    }
//                }
//
//                Text("Individual progress")
//                    .foregroundColor(Color.darkGreen)
//                    .font(.body)
//
//                ZStack {
//                    ZStack(alignment: .leading) {
//                        RoundedRectangle(cornerRadius: 10, style: .circular)
//                            .frame(maxWidth: .infinity)
//                            .foregroundColor(.gray)
//                            .opacity(0.1)
//
//                        RoundedRectangle(cornerRadius: 10, style: .circular)
//                            .frame(maxWidth: 70)
//                            .foregroundColor(Color.accentColor)
//                    }
//
//                    HStack {
//                        Text("45%")
//                    }
//                }

            }.padding(12)
        }.padding(.horizontal, 13).padding(.bottom, 9)
    }
    
}

struct JourneyCard_Previews: PreviewProvider {
    static var previews: some View {
        JourneyCard()
    }
}
