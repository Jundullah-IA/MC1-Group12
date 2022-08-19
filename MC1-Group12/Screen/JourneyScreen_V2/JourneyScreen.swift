//
//  JourneyScreen.swift
//  HiKit
//
//  Created by Jundullah Ilhaq Aulia on 14/08/22.
//

import SwiftUI

struct JourneyScreen: View {
    @FetchRequest(sortDescriptors: []) private var journeySet: FetchedResults<Journey>

    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    if(journeySet.count > 0) {
                        ForEach(journeySet) {journey in
                            JourneyCard(journey: journey)
                        }
                    } else {
                        Text("Hello world")
                    }
                }
            }.background()
            
            .navigationTitle("Let's Hike")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

struct JourneyScreen_Previews: PreviewProvider {
    static var previews: some View {
        JourneyScreen()
    }
}
