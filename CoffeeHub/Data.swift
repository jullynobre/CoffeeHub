//
//  Data.swift
//  CoffeeHub
//
//  Created by Ada 2018 on 17/05/18.
//  Copyright © 2018 Academy 2018. All rights reserved.
//

import Foundation

class StaticData{
    static let sharedInstance = StaticData()
    
    var recipes: [Recipe] = []
    var grains: [Grain] = [Grain.init(name: "Arábica", icon: nil, difficulty: Difficulty.easy, prepTime: Float(20.9), typeDescription: "Lalala"), Grain.init(name: "Arábica", icon: #imageLiteral(resourceName: "finalLogo"), difficulty: Difficulty.easy, prepTime: Float(20.9), typeDescription: "Lalala")]
    var favorites: [Coffee] = [Grain.init(name: "Arábica", icon: nil, difficulty: Difficulty.easy, prepTime: Float(20.9), typeDescription: "Lalala"), Grain.init(name: "Arábica", icon: #imageLiteral(resourceName: "finalLogo"), difficulty: Difficulty.easy, prepTime: Float(20.9), typeDescription: "Lalala")]

}
