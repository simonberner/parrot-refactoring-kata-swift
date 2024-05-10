//
//  Parrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 07.05.2024.
//

import Foundation

class Parrot {
    public let voltage: Double
    public let isNailed: Bool
    
    public init(voltage: Double, isNailed: Bool) {
        self.voltage = voltage
        self.isNailed = isNailed
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
