//
//  ItemCard.swift
//  HiKit
//
//  Created by Aditya Cahyo on 19/08/22.
//

import SwiftUI

struct ItemCard: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                HStack {
                    Image(systemName: "plus.circle").font(.title3).foregroundColor(.red)
                    Spacer()
                }
                HStack {
                    Text("Tent").font(.title3).fontWeight(.bold)
                    Spacer()
                    Text("x5").font(.footnote)
                }
                Divider()
                Text("Bring big tents only, note down tents with included sleeping bag.").font(.caption)
            }
            .padding(.vertical, 8)
            .padding(.trailing, 16)
            Spacer()
            Button(action: {}) {
                Label("Add Item", systemImage: "checkmark.square.fill").labelStyle(.iconOnly)
                    .font(.custom("", size: 35))
            }.foregroundColor(Color.orange)
            .padding(5)
        }
        
    }
}

struct ItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ItemCard()
    }
}
