//
//  Ingredients.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 16/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import Foundation
import UIKit

struct Ingredient {
    let icon: UIImage
    let name: String
    let quantity: String
    let measurementUnit: Measurement
    
    init(name: String, icon: UIImage, quantity: String, measurementUnit: Measurement) {
        self.name = name
        self.icon = icon
        self.quantity = quantity
        self.measurementUnit = measurementUnit
    }
}
