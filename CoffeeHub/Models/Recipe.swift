//
//  recipe.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 16/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import Foundation
import UIKit

class Recipe: Coffee {
    var ingredients: [Ingredient] = []
    let prepMethod: String
    let difficulty: Difficulty
    let prepTime: Float
    
    init(name: String, icon: UIImage?, difficulty: Difficulty, prepTime: Float, prepMethod: String) {
        
        var image: UIImage = #imageLiteral(resourceName: "placeholderRecipe")
        if let unwrappedIcon = icon{
            image = unwrappedIcon
        }
        
        self.prepMethod = prepMethod
        self.difficulty = difficulty
        self.prepTime = prepTime
        
        super.init(name: name, icon: image)
    }
}
