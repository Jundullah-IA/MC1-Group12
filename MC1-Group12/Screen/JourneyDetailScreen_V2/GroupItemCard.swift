//
//  ItemCard.swift
//  HiKit
//
//  Created by Aditya Cahyo on 19/08/22.
//

import SwiftUI

struct GroupItemCard: View {
    @ObservedObject var itemDetail: GroupItemDB
    
    @Environment(\.managedObjectContext) var moc
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Image(systemName: "plus.circle").font(.title3).foregroundColor(.red)
                    Spacer()
                }
                HStack {
                    Text("\(itemDetail.wrapName)").font(.title3).fontWeight(.bold)
                    Spacer()
                    Text("x\(itemDetail.total)").font(.footnote)
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
//
//struct ItemCard_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemCard()
//    }
//}
