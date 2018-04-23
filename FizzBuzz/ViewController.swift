//
//  ViewController.swift
//  FizzBuzz
//
//  Created by Kyl Chiang on 2018/4/4.
//  Copyright © 2018年 Kyl Chiang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gameScore: Int? {
        didSet {    // property observer
//            numberButton.setTitle("\(gameScore ?? 0)", for: .normal)
            guard let unwrappedScore = gameScore else {
                print("gameScore is nil")
                return
            }
            numberButton.setTitle("\(unwrappedScore)", for: .normal)
        }
    }
    
    var game: Game?

    @IBOutlet weak var numberButton: UIButton!
    @IBOutlet weak var fizzButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        game = Game()
        
        guard let checkedGame = game else {
            print("Game is nil")
            return
        }
        
        gameScore = checkedGame.score
//        gameScore = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func play(move: Move) {
        guard let unwrappedGame = game else {
            print("Game is nil!")
            return
        }
        let response = unwrappedGame.play(move: move)
        gameScore = response.score
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
//        guard let unwrappedScore = gameScore else {
//            print("Game score is nil!")
//            return
//        }
//        let nextScore = unwrappedScore + 1
        if sender == numberButton {
            play(move:.Number)
        } else if (sender == fizzButton) {
            play(move:.Fizz)
        }
        
    }
    
}

