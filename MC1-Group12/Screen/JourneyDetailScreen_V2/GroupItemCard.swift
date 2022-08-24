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
        Group {
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    HStack {
                        if itemDetail.wrapPic.isEmpty {
                            Image(systemName: "plus.circle").font(.title3).foregroundColor(.red)
                        } else {
                        HStack {
                            ForEach(Array(itemDetail.wrapPic.prefix(3).enumerated()), id: \.element) {index, pic in
                                ProfilePic(name: pic.wrapName, colorCode: [.indigo, .mint, .cyan, .teal][(index + 1) % 3])
//                                        .offset(x: index > 0 ? CGFloat(index * -12) : 0, y: 0)
//                                        .zIndex(Double(itemDetail.pic.count - index))
                                }
                            if (itemDetail.wrapPic.count > 3) {
                                ProfilePic(name: "+\(itemDetail.wrapPic.count - 3)", colorCode: .gray)
                            }
                        }
                        }
                        Spacer()
                    }
                    HStack {
                        Text("\(itemDetail.wrapName)").font(.headline).fontWeight(.bold)
                        Spacer()
                        Text("x\(itemDetail.total)").font(.footnote)
                    }
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
}
//
//struct ItemCard_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemCard()
//    }
//}
