//
//  TestForms.swift
//  MC1-Group12
//
//  Created by Jundullah Ilhaq Aulia on 12/05/22.
//

import SwiftUI

struct TestForms: View {
    @State private var showSheet: Bool = false
    @State private var selectedSheet: Int = 0
    
    var body: some View {
        VStack {
            Button(action: {
                selectedSheet = 0
                showSheet.toggle()
            }, label: {
                Text("Show Hiking Form")
            }) .padding()
            
            Button(action: {
                selectedSheet = 1
                showSheet.toggle()
            }, label: {
                Text("Show Item Form")
            }) .padding()
            
            Text("\(String(showSheet))")
            
            .sheet(isPresented: $showSheet) {
//                switch selectedSheet {
//                    case 0 : HikingDetailForm()
//                    case 1 : ItemDetailForm()
//                    default: TestForms()
//                }
            }
        }
    }
}

struct TestForms_Previews: PreviewProvider {
    static var previews: some View {
        TestForms()
    }
}
