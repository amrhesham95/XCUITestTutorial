//
//  BDDUITest.swift
//  UITestTutorialUITests
//
//  Created by Amr Hesham on 26/05/2024.
//

import Foundation
import XCTest

final class BDDUITest: UITestBase {    
    func test_whenClickMeButtonTapped_textIsUpdated() {
        givenAppIsReady()
        whenDataIsEntered()
        whenEnrollIsTapped()
        thenThanksMessageIsShown()
    }
}
