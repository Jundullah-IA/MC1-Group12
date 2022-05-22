//
//  JourneyList.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 14/05/22.
//

import SwiftUI

struct JourneyList: View {
    @ObservedObject var globalObj: HikingJourney
    
    var body: some View {
        let list = globalObj.journeyList.filter {$0.isDone}
        List {
            ForEach(list as [Hiking]) { item in
                NavigationLink(destination: HikingDetailScreen(globalObj: globalObj, hikeDetail: item)) {
                    HStack {
                        Image(item.mountain.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 90, height: 90)
                            .overlay(Rectangle().opacity(0.2))
                            .clipShape(RoundedRectangle(cornerRadius: 20))
                        VStack(alignment: .leading) {
                            Text(item.mountain.name)
                                .font(.title3)
                                .fontWeight(.medium)
                            Text(item.mountain.location)
                                .font(.system(size: 16, weight: .regular, design: .serif))
                                .italic()
                                .foregroundColor(Color.darkGreen)
                            Spacer()
                            HStack {
                                HStack {
                                    Image(systemName: "calendar")
                                        .foregroundColor(Color.darkGreen)
                                    Text(dateToString(item.date))
                                }
                                Spacer()
                                HStack {
                                    Image(systemName: "person.3.fill")
                                        .foregroundColor(Color.darkGreen)
                                    Text("\(item.hiker.count)")
                                }
                            }.font(.subheadline)
                        }
                    }
                    .padding(.vertical, 5)
                }
            }
        }.listStyle(.plain)
    }
}

//struct JourneyList_Previews: PreviewProvider {
//    static var previews: some View {
//        JourneyList()
//    }
//}
