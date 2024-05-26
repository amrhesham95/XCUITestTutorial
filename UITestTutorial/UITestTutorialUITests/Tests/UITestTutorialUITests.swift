//
//  UITestTutorialUITests.swift
//  UITestTutorialUITests
//
//  Created by Amr Hesham on 26/05/2024.
//

import XCTest

final class UITestTutorialUITests: UITestBase {
    
    func test_whenClickMeButtonTapped_textIsUpdated() {
        app.textFields["cityInputField"].tap()
        app.textFields["cityInputField"].typeText("Cairo")
        app.buttons["clickMeButton"].tap()
        XCTAssertTrue(app.staticTexts["welcomeText"].label == "Thanks for Joining!")
    }
}
