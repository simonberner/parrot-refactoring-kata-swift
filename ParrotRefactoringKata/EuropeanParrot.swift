//
//  EuropeanParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 09.05.2024.
//

import Foundation

class EuropeanParrot: Parrot {
    override init(voltage: Double, isNailed: Bool) {
        super.init(voltage: voltage, isNailed: isNailed)
        
    }
    
    override func speed() -> Double {
        return baseSpeed
    }
}
