//
//  AfricanParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 08.05.2024.
//

import Foundation

class AfricanParrot: Parrot {
    init(type: ParrotType, numberOfCoconuts: Int, voltage: Double, isNailed: Bool) {
        super.init(type, numberOfCoconuts: numberOfCoconuts, voltage: voltage, isNailed: isNailed)
    }
}
