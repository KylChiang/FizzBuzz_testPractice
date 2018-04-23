//
//  ViewControllerUnitTests.swift
//  FizzBuzzTests
//
//  Created by Kyl Chiang on 2018/4/7.
//  Copyright © 2018年 Kyl Chiang. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class ViewControllerUnitTests: XCTestCase {
    
    var viewController : ViewController!
    
    
    override func setUp() {
        super.setUp()
        
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        viewController = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        UIApplication.shared.keyWindow!.rootViewController = viewController
        let _ = viewController.view
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testMove1IncrementsScore() {
        viewController.play(move:.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 1)
    }
    
    func testMove2IncrementScore() {
        viewController.play(move:.Number)
        viewController.play(move:.Number)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 2)
        
    }
    
    func testHasAGame() {
        XCTAssertNotNil(viewController.game)
    }
    
    func testFizzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move:.Fizz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
    func testBuzzIncrementScore() {
        viewController.game?.score = 9
        viewController.play(move:.Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 10)
    }
    
    func testFizzBuzzIncrementScore() {
        viewController.game?.score = 2
        viewController.play(move:.FizzBuzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 15)
    }
    
    func testUserPlayFail() {
        viewController.game?.score = 2
        viewController.play(move:.Buzz)
        let newScore = viewController.gameScore
        XCTAssertEqual(newScore, 3)
    }
    
}
