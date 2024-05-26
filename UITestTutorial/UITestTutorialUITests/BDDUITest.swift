//
//  BDDUITest.swift
//  UITestTutorialUITests
//
//  Created by Amr Hesham on 26/05/2024.
//

import Foundation
import XCTest

final class BDDUITest: XCTestCase {
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        app = XCUIApplication()
        app.launch()
    }
    
    override func tearDown() {
        app = nil
        super.tearDown()
    }
    
    func test_whenClickMeButtonTapped_textIsUpdated() {
        givenAppIsReady()
        whenDataIsEntered()
        whenEnrollIsTapped()
        thenThanksMessageIsShown()
    }

}

extension BDDUITest {
    func givenAppIsReady() {
        XCTContext.runActivity(named: "Given App Is Ready") { _ in
            XCTAssertTrue(app.buttons["clickMeButton"].exists)
        }
    }
    
    func whenDataIsEntered() {
        XCTContext.runActivity(named: "When Data is Entered") { _ in
            app.textFields["cityInputField"].tap()
            app.textFields["cityInputField"].typeText("Cairo")
        }
    }
    
    func whenEnrollIsTapped() {
        XCTContext.runActivity(named: "When Enroll Button is Tapped") { _ in
            app.buttons["clickMeButton"].tap()
        }
    }
    
    func thenThanksMessageIsShown() {
        XCTContext.runActivity(named: "Then Thanks Message Is Shown") { _ in
            XCTAssertTrue(app.staticTexts["welcomeText"].label == "Thanks for Joining!")
        }
    }
}
