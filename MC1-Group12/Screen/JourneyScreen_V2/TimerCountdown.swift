//
//  SwiftUIView.swift
//  HiKit
//
//  Created by Billi Umar Daeli on 24/08/22.
//

import SwiftUI

struct TimerCountdown: View {
    var toDate = Calendar.current.date(byAdding: .day, value : 5, to: Date())!
    
    var body: some View {
        VStack {
            TimerView(setDate : toDate)
        }
        .font(.system(size:10))
    }
}


struct TimerView : View {
    
    @State var nowDate: Date = Date()
    let setDate : Date
    var timer: Timer {
        Timer.scheduledTimer(withTimeInterval: 1, repeats: true) {_ in
            self.nowDate = Date()
        }
    }
    
    var body: some View {
        Text(TimerFunction(from: setDate))
            .onAppear(perform: {self.timer
                
            })
    }
    
    func TimerFunction(from date: Date) -> String {
        let calendar = Calendar(identifier: .gregorian)
        let timeValue = calendar
            .dateComponents([.day, .hour,.minute, .second], from: nowDate, to: setDate)
        return String(format: "In %2dd",timeValue.day!)

        
//        return String(format: "%02d Days left, %02d:%02d:%02d",
//                      timeValue.day!,
//                      timeValue.hour!,
//                      timeValue.minute!,
//                      timeValue.second!)
    }
}

struct TimerCountdown_Previews: PreviewProvider {
    static var previews: some View {
        TimerCountdown()
    }
}
