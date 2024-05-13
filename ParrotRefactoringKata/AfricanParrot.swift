//
//  AfricanParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 08.05.2024.
//

import Foundation

class AfricanParrot: Parrot {
    private var numberOfCoconuts: Int
    var loadFactor = 9.0
    var baseSpeed = 12.0
    
    init(numberOfCoconuts: Int, voltage: Double, isNailed: Bool) {
        self.numberOfCoconuts = numberOfCoconuts
    }
    
    func speed() -> Double {
        return max(0, baseSpeed - loadFactor * Double(numberOfCoconuts))
    }
}
