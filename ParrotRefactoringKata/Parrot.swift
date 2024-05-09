//
//  Parrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 07.05.2024.
//

import Foundation

class Parrot {
    private let type: ParrotType
    private let numberOfCoconuts: Int
    private let voltage: Double
    private let isNailed: Bool
    
    private init(_ type: ParrotType, numberOfCoconuts: Int, voltage: Double, isNailed: Bool) {
        self.type = type
        self.numberOfCoconuts = numberOfCoconuts
        self.voltage = voltage
        self.isNailed = isNailed
    }
    
    // factory method
    static func createParrot(type: ParrotType, numberOfCoconuts: Int, voltage: Double, isNailed: Bool) -> Parrot {
        return Parrot(type, numberOfCoconuts: numberOfCoconuts, voltage: voltage, isNailed: isNailed)
    }
    
    func speed() -> Double {
        switch type {
        case .european:
            return baseSpeed
            
        case .african:
            return max(0, baseSpeed - loadFactor * Double(numberOfCoconuts))
            
        case .norwegianBlue:
            return isNailed ? 0 : baseSpeed(voltage: voltage)
        }
    }
    
    private func baseSpeed(voltage: Double) -> Double {
        min(24.0, voltage * baseSpeed)
    }
    
    private var loadFactor: Double {
        9.0
    }
    
    private var baseSpeed: Double {
        12.0
    }
}
