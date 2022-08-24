//
//  MountainInformation.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 19/05/22.
//

import SwiftUI

struct InformationView: View {
    var hikingEstimation: HikingEstimation?
    var mountainInfo: [MountainInfo]?
    
    var body: some View {
        if let hikingEstimation = hikingEstimation {
            VStack(alignment: .leading, spacing: 10) {
                Text("Hiking Estimation")
                    .font(.headline)
                    .bold()
                    .foregroundColor(Color.darkGreen)

                ZStack {
                    Color.estimation
                    
                    HStack(alignment: .center, spacing: 20) {
                        HStack {
                            Image(systemName: "clock.fill")
                            Text(hikingEstimation.duration)
                        }
                        
                        Divider()
                            .frame(width: 0.5, height: 22)
                            .background(.white)
                        
                        HStack {
                            Image(systemName: "figure.walk")
                            Text("\(hikingEstimation.distance) km")
                        }
                        
                        Divider()
                            .frame(width: 0.5, height: 22)
                            .background(.white)
                        
                        HStack {
                            Image(systemName: "move.3d")
                            Text("\(hikingEstimation.pathways) Pathways")
                        }
                    }
                }
                .cornerRadius(8)
                .foregroundColor(.white)
                .frame(height: 30)

            }.padding()
            
        }
        
        if(mountainInfo != nil) {
            ForEach(mountainInfo!) {info in
                VStack(alignment: .leading) {
                    HStack {
                        Text(info.title)
                            .font(.headline)
                            .bold()
                            .foregroundColor(Color.darkGreen)
                        Spacer()
                    } .padding(.horizontal)
                    
                    HStack {
                        Text(info.information)
                            .font(.callout)
                        Spacer()
                    }.padding(.horizontal)
                }.padding(.bottom, 5)
            }
        }
    }
}

struct MountainInformation_Previews: PreviewProvider {
    static var previews: some View {
        InformationView()
    }
}
