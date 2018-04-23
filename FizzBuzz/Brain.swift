//
//  Brain.swift
//  FizzBuzz
//
//  Created by Kyl Chiang on 2018/4/4.
//  Copyright © 2018年 Kyl Chiang. All rights reserved.
//

import UIKit

class Brain {
    func isDivisibleByThree(number: Int) -> Bool {
        if number % 3 == 0 {
            return true
        } else {
            return false
        }
    }
    
    func isDivisibleByFive(number: Int) -> Bool {
        if number % 5 == 0 {
            return true
        } else {
            return false
        }
    }
    
    func isDivisibleByThreeANDFive(number: Int) -> Bool {
        if (number % 3 == 0) && (number % 5 == 0) {
            return true
        } else {
            return false
        }
    }
    
    func isDivisible(div: Int, number:Int) -> Bool {
        return number % div == 0
    }
    
    func check(number: Int) -> Move {
        if isDivisibleByThreeANDFive(number: number) {
            return .FizzBuzz
        } else if isDivisibleByThree(number: number) {
            return .Fizz
        } else if isDivisibleByFive(number: number) {
            return .Buzz
        } else {
            return .Number
        }
    }
}
