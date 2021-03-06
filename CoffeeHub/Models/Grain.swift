//
//  Grains.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 16/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import Foundation
import UIKit

class Grain: Coffee {
    let typeDescription: String
    
    init(name: String, icon: UIImage?, typeDescription: String) {
        var image: UIImage = #imageLiteral(resourceName: "placeholderGrain")
        if let unwrappedIcon = icon{
            image = unwrappedIcon
        }
        
        self.typeDescription = typeDescription
    
        super.init(name: name, icon: image)
    }
}
