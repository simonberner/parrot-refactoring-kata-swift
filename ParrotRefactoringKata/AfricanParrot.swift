//
//  AfricanParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 08.05.2024.
//

import Foundation

class AfricanParrot: Parrot {
    override init(numberOfCoconuts: Int, voltage: Double, isNailed: Bool) {
        super.init(numberOfCoconuts: numberOfCoconuts, voltage: voltage, isNailed: isNailed)
    }
    
    override func speed() -> Double {
        return max(0, baseSpeed - loadFactor * Double(numberOfCoconuts))
    }
}
