//
//  Restaurant.swift
//  FoodPin
//
//  Created by Jovan Markovic on 3/3/20.
//  Copyright © 2020 Jovan Markovic. All rights reserved.
//

import Foundation

class Restaurant {
    var name: String?
    var type: String?
    var location: String?
    var phoneNumber: String?
    var image: String?
    var isVisited: Bool = false
    var rating: String?
    
    init(name: String, type: String, location: String, phoneNumber: String, image: String, isVisited: Bool, rating: String?) {
        self.name = name
        self.type = type
        self.location = location
        self.phoneNumber = phoneNumber
        self.image = image
        self.isVisited = isVisited
        self.rating = rating
    }
}
