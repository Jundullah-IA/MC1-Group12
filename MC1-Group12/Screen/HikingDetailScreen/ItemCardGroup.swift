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
                Text(groupItem.name.uppercased()).font(.headline).lineLimit(1)
                
                HStack{
                    ForEach(groupItem.pic, id: \.self) {pic in
                       let color =  colorsPIC[groupItem.pic.firstIndex{$0.self == pic} ?? 0]
                        ZStack {
                            color.opacity(0.1)
                            HStack {
                                Image(systemName: "person").font(.subheadline)
                                Text(pic).font(.subheadline)
                            }
                            .cornerRadius(15)
                            .padding(.horizontal, 10)
                            .foregroundColor(color)
                        }
                        .cornerRadius(15)
                        .frame(minWidth: 110)
                        .frame(height: 22)
                    }
                }
                Spacer()
                Text(groupItem.notes).font(.subheadline).foregroundColor(.gray)
                Divider()
                HStack{
                    Text("\(groupItem.quantity) Qty").font(.subheadline)
                    Spacer()
                    Button(action: {checked = !checked}) {
                        Image(systemName: checked ? "checkmark.circle.fill" : "circle").foregroundColor(.accentColor)
                            .font(.title3)
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 12)
        }.padding(.bottom, 4)
    }
}
//
//struct ItemCardGroup_Previews: PreviewProvider {
//    static var previews: some View {
//        ItemCardGroup()
//    }
//}
