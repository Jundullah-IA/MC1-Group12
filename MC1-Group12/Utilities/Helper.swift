//
//  Func.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 20/05/22.
//

import Foundation

func formatDate(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateFormat = "EEE, d MMM yyyy"
    return formatter.string(from: date)
}
