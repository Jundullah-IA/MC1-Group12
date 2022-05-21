//
//  ItemCard.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct ItemCardGroup: View {
    @State var checked: Bool = false
    
    var groupItem: GroupItem
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20).foregroundColor(checked ? .disabledCardBg : .white).frame(height: 140)
            
            VStack(alignment: .leading) {
                Text(groupItem.name.uppercased()).font(.headline)
                
                HStack{
                    ForEach(groupItem.pic, id: \.self) {pic in
                        ZStack {
                            Color.background
                            HStack {
                                Image(systemName: "person")
                                Text(pic)
                            } .cornerRadius(15)
                        }
                        .cornerRadius(15)
                        .frame(width: 110, height: 35)
                    }
                    
                    Spacer()
                }
                
                Text(groupItem.notes).font(.subheadline).foregroundColor(.gray)
                Divider()
                HStack{
                    Text("\(groupItem.quantity)").font(.subheadline)
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

//struct ItemCardGroup_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemCardGroup()
//    }
//}
