//
//  MountainInformation.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 19/05/22.
//

import SwiftUI

struct InformationView: View {
    var mountainInfo: [MountainInfo]?
    
    var body: some View {
        if(mountainInfo != nil) {
            ForEach(mountainInfo!) {info in
                VStack(alignment: .leading) {
                    HStack {
                        Text(info.title)
                            .font(.title3)
                            .bold()
                        Spacer()
                    } .padding(.horizontal)
                    
                    HStack {
                        Text(info.information)
                        Spacer()
                    }.padding(.horizontal)
                }.padding(.vertical, 5)
            }
        }
    }
}

struct MountainInformation_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
