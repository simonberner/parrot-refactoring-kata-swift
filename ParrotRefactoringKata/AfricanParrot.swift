//
//  AfricanParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 08.05.2024.
//

import Foundation

class AfricanParrot: Parrot {
    private var numberOfCoconuts: Int
    
    init(numberOfCoconuts: Int, voltage: Double, isNailed: Bool) {
        self.numberOfCoconuts = numberOfCoconuts
    }
    
    override func speed() -> Double {
        return max(0, baseSpeed - loadFactor * Double(numberOfCoconuts))
    }
}
