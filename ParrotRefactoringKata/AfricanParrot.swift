//
//  AfricanParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 08.05.2024.
//

import Foundation

class AfricanParrot: Parrot {
    init(numberOfCoconuts: Int, voltage: Double, isNailed: Bool) {
        super.init(.african, numberOfCoconuts: numberOfCoconuts, voltage: voltage, isNailed: isNailed)
    }
}
