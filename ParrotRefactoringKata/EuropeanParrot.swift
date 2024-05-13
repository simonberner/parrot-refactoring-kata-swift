//
//  EuropeanParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 09.05.2024.
//

import Foundation

class EuropeanParrot: Parrot {
    var loadFactor: Double = 0.0
    var baseSpeed = 12.0
    
    func speed() -> Double {
        return baseSpeed
    }
}
