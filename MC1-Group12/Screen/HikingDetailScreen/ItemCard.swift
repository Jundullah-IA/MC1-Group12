//
//  ItemCard.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct ItemCardGroup: View {
    @State var checked: Bool = false
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20).foregroundColor(checked ? .disabledCardBg : .white).frame(height: 100)
            
            VStack(alignment: .leading) {
                Text("baju".uppercased()).font(.headline)
                Text("Kaos aja").font(.subheadline).foregroundColor(.gray)
                Divider()
                HStack{
                    Text("4 Qty").font(.subheadline)
                    Spacer()
                    Button(action: {checked = !checked}) {
                        Image(systemName: checked ? "checkmark.circle.fill" : "circle").foregroundColor(.accentColor)
                            .font(.title3)
                    }
                }
            }.padding(.horizontal)
        }.padding(.bottom, 4)
    }
}

struct ItemCard_Previews: PreviewProvider {
    static var previews: some View {
        ItemCard()
    }
}
