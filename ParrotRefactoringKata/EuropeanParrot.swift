//
//  EuropeanParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 09.05.2024.
//

import Foundation

class EuropeanParrot: Parrot {
    override init(numberOfCoconuts: Int, voltage: Double, isNailed: Bool) {
        super.init(numberOfCoconuts: numberOfCoconuts, voltage: voltage, isNailed: isNailed)
    }
    
    override func speed() -> Double {
        return baseSpeed
    }
}
