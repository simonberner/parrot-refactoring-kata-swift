//
//  NorwegianParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 09.05.2024.
//

import Foundation

class NorwegianParrot: Parrot {
    private let voltage: Double
    private let isNailed: Bool

    init(voltage: Double, isNailed: Bool) {
        self.voltage = voltage
        self.isNailed = isNailed
    }
    
    override func speed() -> Double {
        return isNailed ? 0 : min(24.0, voltage * baseSpeed)
    }
}
