//
//  ParrotType.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 07.05.2024.
//

import Foundation

enum ParrotType {
    case european, african, norwegianBlue
    
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
}
