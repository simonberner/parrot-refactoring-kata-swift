//
//  AppLauncher.swift
//  ParrotRefactoringKata
//
//  Created by simon.berner on 08.05.2024.
//

import SwiftUI

@main
struct AppLauncher {
    
    static func main() throws {
        if NSClassFromString("XCTestCase") == nil {
            ParrotRefactoringKataApp.main()
        } else {
            TestApp.main()
        }
    }
}

struct TestApp: App {
    
    var body: some Scene {
        WindowGroup { Text("Running Unit Tests") }
    }
}
