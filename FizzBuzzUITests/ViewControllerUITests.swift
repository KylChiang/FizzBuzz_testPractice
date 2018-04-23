//
//  ViewControllerUITests.swift
//  FizzBuzzUITests
//
//  Created by Kyl Chiang on 2018/4/7.
//  Copyright © 2018年 Kyl Chiang. All rights reserved.
//

import XCTest

class ViewControllerUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    func testTapNumberButtonIncrementsScore() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        
//        XCUIApplication().buttons["0"].tap()
        numberButton.tap()
        numberButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "2")
    }
    
    func testTapNumberButtonIncrementsScore3() {
        let app = XCUIApplication()
        let numberButton = app.buttons["numberButton"]
        let fizzButton = app.buttons["fizzButton"]
        
        
        //        XCUIApplication().buttons["0"].tap()
        numberButton.tap()
        numberButton.tap()
        fizzButton.tap()
        let newScore = numberButton.label
        XCTAssertEqual(newScore, "3")
    }
}
