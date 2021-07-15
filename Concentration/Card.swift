//
//  Card.swift
//  Concentration
//
//  Created by Valerii D on 14.07.2021.
//

import Foundation

struct Card {
    
    var isFaceUp = false
    var isMatched = false
    var identifier: Int
    
    static var idenntifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        idenntifierFactory += 1
        return idenntifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}
