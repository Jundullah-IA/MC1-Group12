//
//  Func.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 20/05/22.
//

import Foundation

func dateToString(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd MMM yyyy"
    let someDateTime = formatter.string(from: date)
    return someDateTime
}

func formatDate(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "EEEE, d MMM yyyy"
    return formatter.string(from: date)
}
