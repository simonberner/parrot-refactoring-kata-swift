//
//  Parrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 07.05.2024.
//

import Foundation

class Parrot {
    // There is no such concept as abstract in Swift -> use protcol
    public func speed() -> Double {
        preconditionFailure("This method must be overridden")
    }
    
    public var loadFactor: Double {
        9.0
    }
    
    public var baseSpeed: Double {
        12.0
    }
}
