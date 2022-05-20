//
//  HikingJourney.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 19/05/22.
//

import Foundation

struct Hiking: Identifiable {
    let id = UUID()
    var mountain: Mountain = MountainList[0]
    var date: Date = Date.now
    var hiker: [String] = [""]
    var isDone: Bool = false
}

class HikingJourney: ObservableObject {
    @Published var hikingJourney: [Hiking] = []
}
