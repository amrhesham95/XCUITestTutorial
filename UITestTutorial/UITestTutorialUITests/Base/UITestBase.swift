//
//  UITestBase.swift
//  UITestTutorialUITests
//
//  Created by Amr Hesham on 26/05/2024.
//

import Foundation
import XCTest

class UITestBase: XCTestCase {
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
}
