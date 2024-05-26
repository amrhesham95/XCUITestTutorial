//
//  UITestsSteps.swift
//  UITestTutorialUITests
//
//  Created by Amr Hesham on 26/05/2024.
//

import Foundation
import XCTest

extension UITestBase {
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App Is Ready") { _ in
            XCTAssertTrue(Screen.enrollButton.element.exists)
        }
    }
    
    func whenDataIsEntered() {
        XCTContext.runActivity(named: "When Data is Entered") { _ in
            Screen.cityInput.element.tap()
            Screen.cityInput.element.typeText("Cairo")
        }
    }
    
    func whenEnrollIsTapped() {
        XCTContext.runActivity(named: "When Enroll Button is Tapped") { _ in
            Screen.enrollButton.element.tap()
        }
    }
    
    func thenThanksMessageIsShown() {
        XCTContext.runActivity(named: "Then Thanks Message Is Shown") { _ in
            XCTAssertTrue(Screen.welcomeLabel.element.label == "Thanks for Joining!")
        }
    }
}
