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
    
    var recipes: [Recipe] = [Recipe.init(name: "Affogatto", icon: nil, difficulty: .hard, prepTime: 200.0, prepMethod: "Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos. Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60, quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais recentemente quando passou a ser integrado a softwares de editoração eletrônica como Aldus PageMaker.")]
    var grains: [Grain] = [Grain.init(name: "Arábica", icon: nil, typeDescription: "Lalala"), Grain.init(name: "Arábica", icon: #imageLiteral(resourceName: "finalLogo"), typeDescription: "Lalala")]
    var favorites: [Coffee] = [Grain.init(name: "Arábica", icon: nil, typeDescription: "Lalala"), Grain.init(name: "Arábica", icon: #imageLiteral(resourceName: "finalLogo"), typeDescription: "Lalala")]

}
