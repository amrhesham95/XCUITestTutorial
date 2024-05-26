//
//  UITestsElements.swift
//  UITestTutorialUITests
//
//  Created by Amr Hesham on 26/05/2024.
//

import Foundation
import XCTest

enum Screen: String {
    case enrollButton = "clickMeButton"
    case welcomeLabel = "welcomeText"
    case cityInput = "cityInputField"
    
    var element: XCUIElement {
        switch self {
        case .enrollButton:
            XCUIApplication().buttons["clickMeButton"]
        case .welcomeLabel:
            XCUIApplication().staticTexts["welcomeText"]
        case .cityInput:
            XCUIApplication().textFields["cityInputField"]
        }
    }
}
