//
//  HikingCard.swift
//  MC1-Group12
//
//  Created by Aditya Cahyo on 18/05/22.
//

import SwiftUI

struct HikingCard: View {
    let height: CGFloat = 120
    
    var body: some View {
        ZStack {
            Image("semeru")
                .resizable()
                .scaledToFill()
                .frame(height: height)
                .overlay(Rectangle().opacity(0.2))
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            VStack {
                HStack(alignment: .top) {
                    VStack(alignment: .leading) {
                        Text("Part of Indonesia")
                            .font(.system(size: 18, weight: .regular, design: .serif))
                            .italic()
                        Text("3,212 mdpl")
                            .font(.subheadline)
                    }
                    Spacer()
                    Menu {
                        Button(action: {}) {
                            Label("Edit", systemImage: "square.and.pencil")
                        }
                        Button(role: .destructive, action: {}) {
                            Label("Delete", systemImage: "trash")
                        }
                    } label: {
                        Image(systemName: "ellipsis")
                            .rotationEffect(.degrees(-90))
                            .padding(.top, 7)
                    }
                }
                
                Spacer()
                
                HStack {
                    HStack{
                        Image(systemName: "calendar")
                        Text("18 June 2022")
                            .font(.subheadline)
                    }
                    Spacer()
                    HStack {
                        Image(systemName: "person.3.fill")
                        Text("10")
                    }
                }
            }
            .padding(.all, 12)
            .foregroundColor(.white)
        }.frame(height: height)
    }
}

struct HikingCard_Previews: PreviewProvider {
    static var previews: some View {
        HikingCard()
    }
}
