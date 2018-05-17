//
//  Grains.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 16/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import Foundation
import UIKit

class Grains: Coffee {
    let typeDescription: String
    
    init(name: String, icon: UIImage, difficulty: Difficulty, prepTime: Float, typeDescription: String) {
        self.typeDescription = typeDescription
        super.init(name: name, icon: icon, difficulty: difficulty, prepTime: prepTime)
    }
}
