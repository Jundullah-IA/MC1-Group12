//
//  MountainRequirement.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 19/05/22.
//

import SwiftUI

struct RequirementView: View {
    var mountainRequairement: [MountainRequirement]?
    
    var body: some View {
        if(mountainRequairement != nil) {
            ForEach(mountainRequairement!) {requirement in
                VStack(alignment: .leading) {
                    HStack {
                        Text(requirement.title)
                            .font(.headline)
                            .bold()
                            .foregroundColor(Color.darkGreen)
                        Spacer()
                    } .padding(.horizontal)
                    
                    ForEach(requirement.items, id: \.self) {item in
                        HStack {
                            Text(item)
                                .font(.callout)
                            Spacer()
                        }.padding(.horizontal)
                    }
                }.padding(.vertical, 10)
            }
        }
    }
}

struct MountainRequirement_Previews: PreviewProvider {
    static var previews: some View {
        RequirementView()
    }
}
