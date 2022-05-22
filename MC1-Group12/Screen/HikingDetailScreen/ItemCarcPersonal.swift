//
//  ItemCarcPersonal.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 20/05/22.
//

import SwiftUI

struct ItemCardPersonal: View {
    @State var checked: Bool = false
    
    
    
    var personalItem: PersonalItem
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20).foregroundColor(checked ? .disabledCardBg : .white).frame(height: 100)
            
            VStack(alignment: .leading) {
                Text(personalItem.name.uppercased()).font(.headline)
                Text(personalItem.notes).font(.subheadline).foregroundColor(.gray)
                Divider()
                HStack{
                    Text("\(personalItem.quantity)").font(.subheadline)
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
//        ItemCardPersonal()
//    }
//}
