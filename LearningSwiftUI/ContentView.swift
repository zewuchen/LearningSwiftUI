//
//  ContentView.swift
//  LearningSwiftUI
//
//  Created by Zewu Chen on 08/04/20.
//

import SwiftUI
import MapKit

// UIViewRepresentable conformance for the MapView type
struct MapView: UIViewRepresentable {

    // Method that creates and returns an empty MKMapView
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

    // Method that sets the map view’s region to the correct coordinates to center the map on Turtle Rock.
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let coordinate = CLLocationCoordinate2D(
            latitude: 34.011286, longitude: -116.166868)
        let span = MKCoordinateSpan(latitudeDelta: 2.0, longitudeDelta: 2.0)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
}

struct CircleImage: View {
    var body: some View {
        // Resizable preenche o frame definido
        Image("naruto").resizable()
            .frame(width: 250, height: 220, alignment: .center)
            .clipShape(Circle())
            .scaledToFit()
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct ContentView: View {
    var cor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
    var body: some View {
        VStack {
            // Não é possível apenas jogar os elementos na tela, é preciso organizá-los em algum elemento, neste caso está sendo organizado tudo dentro de VStack
            // É possível adicionar custom view instanciando elas aqui
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)

            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text("Naruto Uzumaki")
                    .font(.title)
                    .foregroundColor(Color(cor))
                    .bold()
                HStack {
                    Text("Hokage da Vila da Folha")
                        .font(.subheadline)
                    Spacer()
                    Text("País do Fogo")
                        .font(.subheadline)
                    .foregroundColor(.accentColor)
                }
            }
            .padding()

            Spacer()
        }
    }
}

struct QualquerNome: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
