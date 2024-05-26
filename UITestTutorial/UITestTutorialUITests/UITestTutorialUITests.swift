//
//  UITestTutorialUITests.swift
//  UITestTutorialUITests
//
//  Created by Amr Hesham on 26/05/2024.
//

import XCTest

final class UITestTutorialUITests: XCTestCase {
    let app = XCUIApplication()
    
    override func setUpWithError() throws {
        super.setUpWithError()
        app.launch()
        continueAfterFailure = false
    }

    override func tearDownWithError() throws {
        super.tearDownWithError()
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
    
    func test_whenClickMeButtonTapped_textIsUpdated() {
        let app = XCUIApplication()
        app.launch()
        app.textFields["cityInputField"].tap()
        app.textFields["cityInputField"].typeText("Cairo")
        app.buttons["clickMeButton"].tap()
        XCTAssertTrue(app.staticTexts["welcomeText"].label == "Thanks for Joining!")
    }
}
