//
//  Parrot.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 07.05.2024.
//

import Foundation

// There is no such concept as abstract in Swift -> use protcol
protocol Parrot {
    func speed() -> Double
    var loadFactor: Double { get }
    var baseSpeed: Double { get }
}
