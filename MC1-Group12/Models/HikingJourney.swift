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
    
    var groupLogistic: [GroupItem] = []
    var personalLogistic: [PersonalItem] = []
}

struct GroupItem: Identifiable {
    let id = UUID()
    var name: String = "Kaos"
    var quantity: Int = 0
    var notes: String = ""
    var pic: [String] = []
    var isDone: Bool = false
}

struct PersonalItem: Identifiable {
    let id = UUID()
    var name: String = "lala"
    var quantity: Int = 0
    var notes: String = ""
    var isDone: Bool = false
}

class HikingJourney: ObservableObject {
    @Published var journeyList: [Hiking] = []
    
    @Published var showCongrats: Bool = false
}
