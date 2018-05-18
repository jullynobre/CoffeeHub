//
//  File.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 16/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import Foundation
import UIKit

class Coffee {
    let name: String
    let icon: UIImage
    var photos: [UIImage] = []
    
    init(name: String, icon: UIImage) {
        self.name = name
        self.icon = icon
    }
}
