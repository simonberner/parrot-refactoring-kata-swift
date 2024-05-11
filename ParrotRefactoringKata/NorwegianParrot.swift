//
//  NorwegianParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 09.05.2024.
//

import Foundation

class NorwegianParrot: Parrot {
    override init(voltage: Double, isNailed: Bool) {
        super.init(voltage: voltage, isNailed: isNailed)
    }
    
    override func speed() -> Double {
        return isNailed ? 0 : min(24.0, voltage * baseSpeed)
    }
}
