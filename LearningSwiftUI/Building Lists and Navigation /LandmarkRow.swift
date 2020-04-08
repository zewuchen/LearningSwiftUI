//
//  LandmarkRow.swift
//  LearningSwiftUI
//
//  Created by Zewu Chen on 08/04/20.
//

import SwiftUI

struct LandmarkRow: View {

    var name: String

    var body: some View {
        HStack {
            Image("naruto").resizable().frame(width: 50, height: 50, alignment: .leading)
            Text(name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(name: "Teste1")
            LandmarkRow(name: "Teste2")
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
