//
//  SuperheroModel.swift
//  SuperHero
//
//  Created by ahmet karadağ on 9.10.2024.
//

import Foundation
import CoreLocation

struct SuperheroModel: Identifiable {
    var id = UUID()
    var name: String
    var realName: String
    var imageName: String
    var city :String
    var job :String
    var cordinate: Cordinate//kendimiz oluşturduk
    //kahramanın lokasyonunu alıyoruz.
    var cordinateLocation: CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: cordinate.latitude, longitude: cordinate.longitude)
        
    }
    
}

struct Cordinate {
    var latitude : Double
    var longitude: Double
}

let batman = SuperheroModel(name: "batman", realName: "bruce wayne", imageName: "batman", city: "gotham", job: "businessman", cordinate: Cordinate(latitude: 41.92447475324336, longitude: -87.63431064850123))

let superman = SuperheroModel(name: "superman", realName: "clark kent", imageName: "superman", city: "Kansas", job: "journalist", cordinate: Cordinate(latitude: 38.3974648687682, longitude:  -98.01798441582606))
let spiderman = SuperheroModel(name: "spiderman", realName: "peter parker", imageName: "spiderman", city: "new york", job: "photographer", cordinate: Cordinate(latitude: 40.7816445008454, longitude:  -73.96525840574311))
let antman = SuperheroModel(name: "antman", realName: "scott lang", imageName: "antman", city: "florida", job: "scientist", cordinate: Cordinate(latitude: 37.83748539422636, longitude: -122.48415822636844))

let superheroArray = [batman,superman,spiderman,antman]
