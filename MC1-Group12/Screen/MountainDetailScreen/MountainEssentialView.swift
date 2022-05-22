//
//  MountainEssentialView.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 19/05/22.
//

import SwiftUI

struct EssentialView: View {
    var mountainEssential: MountainEssential?
    
    var body: some View {
        if(mountainEssential != nil) {
            VStack {
                VStack(alignment: .leading) {
                    HStack {
                        Text("Group Logistic")
                            .font(.headline)
                            .bold()
                            .foregroundColor(Color.darkGreen)
                        Spacer()
                    } .padding(.horizontal)
                    
                    ForEach((mountainEssential?.groupLogistic)!, id: \.self) {logistic in
                        HStack {
                            Text("- \(logistic)")
                                .font(.callout)
                            Spacer()
                        }.padding(.horizontal)
                    }
                }.padding(.vertical, 10)
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Personal Logistic")
                            .font(.headline)
                            .bold()
                            .foregroundColor(Color.darkGreen)
                        Spacer()
                    } .padding(.horizontal)
                    
                    ForEach((mountainEssential?.personalLogistic)!, id: \.self) {logistic in
                        HStack {
                            Text("- \(logistic)")
                                .font(.callout)
                            Spacer()
                        }.padding(.horizontal)
                    }
                }.padding(.vertical, 10)
            }
        }
    }
}
