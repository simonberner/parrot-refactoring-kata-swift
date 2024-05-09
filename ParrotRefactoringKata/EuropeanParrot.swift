//
//  EuropeanParrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 09.05.2024.
//

import Foundation

class EuropeanParrot: Parrot {
    init(numberOfCoconuts: Int, voltage: Double, isNailed: Bool) {
        super.init(.european, numberOfCoconuts: numberOfCoconuts, voltage: voltage, isNailed: isNailed)
    }
}
