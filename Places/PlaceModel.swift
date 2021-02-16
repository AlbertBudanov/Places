//
//  PlaceModel.swift
//  Places
//
//  Created by Альберт on 15.02.2021.
//

import UIKit

struct Place {
    
    var name: String
    var location: String?
    var type: String?
    var restaurantImage: String?
    var image: UIImage?
    
    static  let placeName = ["Шаурма От Души",
                             "Рис",
                             "ДОДО-Пицца",
                             "Дар-Пицца",
                             "Уни-Пицца",
                             "Цыпа-Гриль",
                             "KFC",
                             "McDonald's",
                             "Патрик & Мари"
    ]
    static func getPlaces() -> [Place] {
        var places = [Place]()
        for place in placeName {
            places.append(Place(name: place, location: "Краснодар", type: "Ресторан", restaurantImage: place, image: nil))
        }
        return places
        
    }
}
