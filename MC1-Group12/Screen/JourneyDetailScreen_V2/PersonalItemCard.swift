//
//  PersonalItemCard.swift
//  HiKit
//
//  Created by Aditya Cahyo on 21/08/22.
//

import SwiftUI

struct PersonalItemCard: View {
    @ObservedObject var itemDetail: PersonalItemDB
    
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Text("\(itemDetail.wrapName)").font(.title3).fontWeight(.bold)
                    Spacer()
                    Text("\(itemDetail.total)").font(.footnote)
                }
                Divider()
                Text("\(itemDetail.wrapNote)").font(.caption)
            }
            .padding(.vertical, 8)
            .padding(.trailing, 16)
            Spacer()
            Image(systemName: itemDetail.isDone ? "checkmark.square.fill" : "square.fill")
                .font(.custom("", size: 35))
                .foregroundColor(itemDetail.isDone ? Color.orange : Color.emptyCheckmark)
                .padding(5)
                .animation(.linear, value: itemDetail.isDone)
                .onTapGesture {
                    itemDetail.isDone.toggle()
                    try? moc.save()
                }
        }
        
    }
}

//struct PersonalItemCard_Previews: PreviewProvider {
//    static var previews: some View {
//        PersonalItemCard()
//    }
//}
