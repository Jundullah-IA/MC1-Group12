//
//  ItemCard.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct ItemCardGroup: View {
//    var hiking: Hiking
    var groupItem: GroupItemDB
    
    var body: some View {
//        let checked = groupItem.isDone
//        let index = globalObj.journeyList.firstIndex(where: {$0.id == hiking.id}) ?? 0
//        let indexGroupItem = globalObj.journeyList[index].groupLogistic.firstIndex(where: {$0.id == groupItem.id}) ?? 0
        
        ZStack {
            RoundedRectangle(cornerRadius: 20).foregroundColor(groupItem.isDone ? .disabledCardBg : .white).frame(height: 140)
            
            VStack(alignment: .leading) {
                Text(groupItem.wrapName.uppercased()).font(.headline).lineLimit(1)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        ForEach(groupItem.wrapPic, id: \.self) {pic in
                            let color =  colorsPIC[groupItem.wrapPic.firstIndex{$0.self == pic} ?? 0]
                            PICButton(color: color, pic: pic.wrapName, width: 110)
                        }
                        if groupItem.wrapPic.count == 0 {
                            PICButton(color: .gray, pic: "NO PIC")
                        }
                    }
                }
                
                Spacer()
                Text(groupItem.wrapNote).font(.subheadline).foregroundColor(.gray)
                Divider()
                HStack{
//                    Text("\(groupItem.) Qty").font(.subheadline)
                    Spacer()
                    Button(action: {
//                        globalObj.journeyList[index].groupLogistic[indexGroupItem].isDone.toggle()
//                        withAnimation(.spring()) {
//                            globalObj.journeyList[index].groupLogistic.sort {!$0.isDone && $1.isDone}
//                        }
//
//                        let isAllPersonalDone = globalObj.journeyList[index].personalLogistic.map{$0.isDone}.allSatisfy {$0 == true}
//                        let isAllGroupDone = globalObj.journeyList[index].groupLogistic.map{$0.isDone}.allSatisfy {$0 == true}
//
//                        if isAllPersonalDone && isAllGroupDone {
//                            globalObj.journeyList[index].isDone.toggle()
//                            globalObj.showCongrats.toggle()
//                        } else if globalObj.journeyList[index].isDone {
//                            globalObj.journeyList[index].isDone.toggle()
//                        }
                    }) {
                        Image(systemName: groupItem.isDone ? "checkmark.circle.fill" : "circle").foregroundColor(.accentColor)
                            .font(.title3)
                    }
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 12)
        }.padding(.bottom, 4)
    }
}

struct PICButton: View {
    var color: Color
    var pic: String
    var width: CGFloat?
    let defaultWidth: CGFloat = 95
    
    var body: some View {
        ZStack {
            color.opacity(0.1)
            HStack {
                Image(systemName: "person").font(.subheadline)
                Text(pic).font(.subheadline)
            }
            .padding(.horizontal, 10)
            .foregroundColor(color)
        }
        .cornerRadius(15)
        .frame(maxWidth: width ?? defaultWidth)
        .frame(width: defaultWidth)
        .frame(height: 22)
    }
}
