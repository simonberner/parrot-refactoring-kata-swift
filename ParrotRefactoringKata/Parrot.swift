//
//  Parrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 07.05.2024.
//

import Foundation

class Parrot {
    public let numberOfCoconuts: Int
    public let voltage: Double
    public let isNailed: Bool
    
    public init(numberOfCoconuts: Int, voltage: Double, isNailed: Bool) {
        self.numberOfCoconuts = numberOfCoconuts
        self.voltage = voltage
        self.isNailed = isNailed
    }
    
    // factory method
    static func createParrot(type: ParrotType, numberOfCoconuts: Int, voltage: Double, isNailed: Bool) -> Parrot {
        var parrot: Parrot
        
        switch type {
        case .european:
            parrot = EuropeanParrot(numberOfCoconuts: numberOfCoconuts, voltage: voltage, isNailed: isNailed)
        case .african:
            parrot = AfricanParrot(numberOfCoconuts: numberOfCoconuts, voltage: voltage, isNailed: isNailed)
        case .norwegianBlue:
            parrot = NorwegianParrot(numberOfCoconuts: numberOfCoconuts, voltage: voltage, isNailed: isNailed)
        }
        return parrot
    }
    
    // There is no such concept as abstract in Swift -> use protcol
    public func speed() -> Double {
        preconditionFailure("This method must be overridden")
    }
    
    public func baseSpeed(voltage: Double) -> Double {
        min(24.0, voltage * baseSpeed)
    }
    
    public var loadFactor: Double {
        9.0
    }
    
    public var baseSpeed: Double {
        12.0
    }
}
