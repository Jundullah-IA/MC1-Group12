//
//  JourneyList.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 14/05/22.
//

import SwiftUI

struct Mount: Identifiable {
    let name: String
    let id = UUID()
}

 var mounts = [
    Mount(name: "Semeru"),
    Mount(name: "Bromo"),
    Mount(name: "Merapi"),
    Mount(name: "Merbabu"),
    Mount(name: "Lawu")
]

struct JourneyList: View {
    var body: some View {
        List(mounts) { item in
            NavigationLink(destination: Text(item.name)) {
                HStack {
                    Image("semeru")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 90, height: 90)
                        .overlay(Rectangle().opacity(0.2))
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                    VStack(alignment: .leading) {
                        Text(item.name)
                            .font(.title3)
                            .fontWeight(.medium)
                        Text("Part of Indonesia").font(.system(size: 16, weight: .regular, design: .serif)).italic().foregroundColor(Color.darkGreen)
                        Spacer()
                        HStack {
                            HStack {
                                Image(systemName: "calendar").foregroundColor(Color.darkGreen)
                                Text("18 June 2022")
                            }
                            Spacer()
                            HStack {
                                Image(systemName: "person.3.fill").foregroundColor(Color.darkGreen)
                                Text("10")
                            }
                        }.font(.subheadline)
                    }
                }
                .padding(.vertical, 5)
            }
            .listRowBackground(Color.white.opacity(0.9))
        }.listStyle(.plain)
    }
}

struct JourneyList_Previews: PreviewProvider {
    static var previews: some View {
        JourneyList()
    }
}
