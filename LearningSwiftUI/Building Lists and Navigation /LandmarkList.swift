//
//  LandmarkList.swift
//  LearningSwiftUI
//
//  Created by Zewu Chen on 08/04/20.
//

import SwiftUI

struct Dados {
    var name: String
    var value: Int
}

struct AnotherView: View {

    var body: some View {
        Text("Aqui é outra View")
    }

}

struct LandmarkList: View {

    @State var landmarkData = [
        Dados(name: "Naruto", value: 0),
        Dados(name: "Naruto", value: 1),
        Dados(name: "Naruto", value: 2),
        Dados(name: "Naruto", value: 3),
        Dados(name: "Naruto", value: 4)
    ]

    var body: some View {

        NavigationView {
            // Utiliza a lista de dados e difere os itens pelo id
            VStack {
                List(landmarkData, id: \.name) { landMark in
                    NavigationLink(destination: AnotherView()) {
                        LandmarkRow(name: landMark.name)
                    }
                }
                    .navigationBarTitle(Text("Landmarks"))
                Spacer()
                Button(action: {
                    for newValue in 0..<self.landmarkData.count {
                        self.landmarkData[newValue].name = "Naruto\(self.landmarkData[newValue].value*2)"
                        self.landmarkData[newValue].value *= 2
                    }
                }) {
                    Text("Modify Data")
                }
            }
        }

    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
//        ForEach(["iPhone SE", "iPhone XS Max", "iPad Pro (12.9-inch)"], id: \.self) { deviceName in
//            LandmarkList()
//                .previewDevice(PreviewDevice(rawValue: deviceName))
//                .previewDisplayName(deviceName)
//        }
        ForEach(["iPhone XS Max"], id: \.self) { deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
