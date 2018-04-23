//
//  GameTests.swift
//  FizzBuzzTests
//
//  Created by Kyl Chiang on 2018/4/4.
//  Copyright © 2018年 Kyl Chiang. All rights reserved.
//

import XCTest
@testable import FizzBuzz

class GameTests: XCTestCase {
    
    let game = Game()
    
    override func setUp() {
        super.setUp()

    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testGameStartsAtZero() {
        XCTAssertTrue(game.score == 0)
    }
    
    func testOnPlayScoreIncremented() {
        let _ = game.play(move: .Number)
        XCTAssertTrue(game.score == 1)
    }
    
    func testOnPlayTwiceScoreIncremented() {
        game.score = 1
        let _ = game.play(move: .Number)
        XCTAssertTrue(game.score == 2)
    }
    
    func testIfMoveIsRight() {
        game.score = 2
        let response = game.play(move: .Fizz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveIsWrong() {
        game.score = 1
        
        let response = game.play(move: .Fizz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    // ===
    func testIfMoveBuzzIsRight() {
        game.score = 4
        
        let response = game.play(move: .Buzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveBuzzIsWrong() {
        game.score = 1
        
        let response = game.play(move: .Buzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveFizzBuzzIsRight() {
        game.score = 14
        
        let response = game.play(move: .FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveFizzBuzzIsWrong() {
        game.score = 1
        
        let response = game.play(move: .FizzBuzz)
        let result = response.right
        XCTAssertEqual(result, false)
    }
    
    func testIfMoveNumberIsRight() {
        game.score = 13
        
        let response = game.play(move: .Number)
        let result = response.right
        XCTAssertEqual(result, true)
    }
    
    func testIfMoveNumberIsWrong() {
        game.score = 1
        
        let response = game.play(move: .Number)
        let result = response.right
        XCTAssertEqual(result, false)
    }

    func testIfMoveWrongScoreNotIncremented() {
        game.score = 1
        let _ = game.play(move: .Fizz)
        
        XCTAssertEqual(game.score, 1)
    }

    func testPlayShouldReturnIfMoveRight() {
        let response = game.play(move: .Number)
        XCTAssertNotNil(response.right)
    }
    
    func testPlayShouldReturnNewScore() {
        let response = game.play(move: .Number)
        XCTAssertNotNil(response.score)
    }
}
