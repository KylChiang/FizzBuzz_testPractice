//
//  Game.swift
//  FizzBuzz
//
//  Created by Kyl Chiang on 2018/4/4.
//  Copyright © 2018年 Kyl Chiang. All rights reserved.
//

import Foundation

class Game {
    var score: Int
    let brain: Brain
    
    init() {
        score = 0
        brain = Brain()
    }
    
    func play(move: Move) -> (right: Bool, score: Int) {
        //        score += 1
        
        let result = brain.check(number: score+1)
        
        if result == move {
            score += 1
            return (true, score)
        } else {
            return (false, score)
        }
    }

}
