//
//  LandmarkList.swift
//  LearningSwiftUI
//
//  Created by Zewu Chen on 08/04/20.
//

import SwiftUI

struct LandmarkList: View {
    @State var landmarkData: [String] = ["Teste1", "Teste2", "Teste3", "Teste4", "Teste5", "Teste6"]

    var body: some View {

        // Utiliza a lista de dados e difere os itens pelo id
        VStack {
            List(landmarkData, id: \.description) { landMark in
                LandmarkRow(name: landMark)
            }
            Spacer()
            Button(action: {
                for newValue in 0..<self.landmarkData.count {
                    self.landmarkData[newValue] = "Teste\(newValue*2)"
                }
            }) {
                Text("Modify Data")
            }
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
