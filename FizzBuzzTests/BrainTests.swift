//
//  BrainTests.swift
//  FizzBuzzTests
//
//  Created by Kyl Chiang on 2018/4/4.
//  Copyright © 2018年 Kyl Chiang. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class BrainTests: XCTestCase {
    let brain = Brain()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testIsDivisibleByThree() {
        let result = brain.isDivisible(div: 3, number: 4)
        XCTAssertEqual(result, true)
    }

    func testIsDivisibleByFive() {
        let result = brain.isDivisible(div: 5, number: 5)
        XCTAssertEqual(result, true)
    }
    
    func testIsDivisibleByThreeANDFive() {
        let result = brain.isDivisible(div: 15, number: 15)
        XCTAssertEqual(result, true)
    }
    
    func testSayFizzz() {
        let result = brain.check(number:1)
        XCTAssertEqual(result, Move.Fizz)
    }
    

    
}
