//
//  SwiftUIView.swift
//  HiKit
//
//  Created by Billi Umar Daeli on 24/08/22.
//

import SwiftUI

struct TimerCountdown: View {
    var hikingDate: Date
    
    func daysBetween(start: Date, end: Date) -> Int {
        return Calendar.current.dateComponents([.day], from: start, to: end).day!
    }
    
    var body: some View {
        let day = daysBetween(start: Date(), end: hikingDate)
        
        VStack {
            if day == 0 {
                Text("Today")
            } else {
                Text("In \(daysBetween(start: Date(), end: hikingDate)) d")
            }
        }
        .font(.system(size:10))
    }
}
