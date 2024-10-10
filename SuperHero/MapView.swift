//
//  MapView.swift
//  SuperHero
//
//  Created by ahmet karadağ on 10.10.2024.
//

import SwiftUI
import MapKit
import CoreLocation

struct MapView: UIViewRepresentable {
   
    var coordinate : CLLocationCoordinate2D
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        let span = MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }

}

#Preview {
    MapView(coordinate: superheroArray[0].cordinateLocation)
}
