//
//  NorwegianParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 09.05.2024.
//

import Foundation

class NorwegianParrot: Parrot {
    init(numberOfCoconuts: Int, voltage: Double, isNailed: Bool) {
        super.init(.norwegianBlue, numberOfCoconuts: numberOfCoconuts, voltage: voltage, isNailed: isNailed)
    }
    
    override func speed() -> Double {
        return isNailed ? 0 : baseSpeed(voltage: voltage)
    }
}
