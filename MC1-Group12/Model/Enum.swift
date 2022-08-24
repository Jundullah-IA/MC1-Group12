//
//  Enum.swift
//  HiKit
//
//  Created by Aditya Cahyo on 25/08/22.
//

import Foundation

// JourneyDetailScreen
enum SortType: String, CaseIterable, Identifiable {
    case completed, dateCreated
    var id: Self { self }
}

// ItemDetailFormV2
enum LogisticType {
    case group, personal
}

enum FormType {
    case edit, new
}

// ContentView
enum Tabs: String, CaseIterable, Identifiable {
    case home, mountains
    var id: Self { self }
}
