//
//  ItemCarcPersonal.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 20/05/22.
//

import SwiftUI

struct ItemCardPersonal: View {
    @ObservedObject var globalObj: HikingJourney
    var hiking: Hiking
    var personalItem: PersonalItem
    
    var body: some View {
        let checked = personalItem.isDone
        let index = globalObj.journeyList.firstIndex(where: {$0.id == hiking.id}) ?? 0
        let indexPersonalItem = globalObj.journeyList[index].personalLogistic.firstIndex(where: {$0.id == personalItem.id}) ?? 0
        
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20).foregroundColor(checked ? .disabledCardBg : .white).frame(height: 100)
            
            VStack(alignment: .leading) {
                Text(personalItem.name.uppercased()).font(.headline).lineLimit(1)
                Text(personalItem.notes).font(.subheadline).foregroundColor(.gray)
                Spacer()
                Divider()
                HStack{
                    Text("\(personalItem.quantity) Qty").font(.subheadline)
                    Spacer()
                    Button(action: {
                        globalObj.journeyList[index].personalLogistic[indexPersonalItem].isDone.toggle()
                        withAnimation(.spring()) {
                            globalObj.journeyList[index].personalLogistic.sort {!$0.isDone && $1.isDone}
                        }
                        
                        
                        let isAllPersonalDone = globalObj.journeyList[index].personalLogistic.map{$0.isDone}.allSatisfy {$0 == true}
                        let isAllGroupDone = globalObj.journeyList[index].groupLogistic.map{$0.isDone}.allSatisfy {$0 == true}
                        
                        if isAllPersonalDone && isAllGroupDone {
                            globalObj.journeyList[index].isDone.toggle()
                            globalObj.showCongrats.toggle()
                        } else if globalObj.journeyList[index].isDone {
                            globalObj.journeyList[index].isDone.toggle()
                        }
                        
                    }) {
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
//        ItemCardPersonal()
//    }
//}
