//
//  ProfilePic.swift
//  HiKit
//
//  Created by Jundullah Ilhaq Aulia on 18/08/22.
//

import SwiftUI

struct ProfilePic: View {
    var name: String
    var colorCode: Color
    
    var getNameFirstChar : String { String(name[name.startIndex])}
    var body: some View {
        Text("\(colorCode != .gray ? getNameFirstChar : name)")
            .bold()
            .foregroundColor(.white)
            .background(
                Circle()
                    .fill(colorCode)
                    .frame(width: 30, height: 30)
            )
            .frame(width: 30, height: 30)
    }
}

struct ProfilePic_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePic(name: "John Doe", colorCode: .indigo)
    }
}
