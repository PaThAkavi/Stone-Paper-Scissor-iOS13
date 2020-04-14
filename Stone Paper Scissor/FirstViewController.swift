//
//  FirstViewController.swift
//  Stone Paper Scissor
//
//  Created by Avaneesh Pathak on 13/04/20.
//  Copyright © 2020 Avaneesh Pathak. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var computerChanceLabel: UILabel!
    @IBOutlet weak var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func chancePlayed(_ sender: UIButton) {
        
        let cpuChance = Int(arc4random_uniform(3))
        let cpuGuess = cpuChancePlayed(guess: cpuChance)
        
        if sender.titleLabel?.text == cpuGuess {
            result.text = "Match Tie! :|"
        } else if ((cpuGuess == "STONE" && sender.titleLabel?.text == "SCISSOR") || (cpuGuess == "SCISSOR" && sender.titleLabel?.text == "PAPER") || (cpuGuess == "PAPER" && sender.titleLabel?.text == "STONE")) {
            result.text = "You Lose :("
        } else if ((cpuGuess == "PAPER" && sender.titleLabel?.text == "SCISSOR") || (cpuGuess == "SCISSOR" && sender.titleLabel?.text == "STONE") || (cpuGuess == "STONE" && sender.titleLabel?.text == "PAPER")) {
            result.text = "You WIN! :)"
        }
    }
    
    func cpuChancePlayed(guess: Int) -> String {
        if guess == 0 {
            computerChanceLabel.text = "STONE"
            return "STONE"
        } else if guess == 1 {
            computerChanceLabel.text = "PAPER"
            return "PAPER"
        } else {
            computerChanceLabel.text = "SCISSOR"
            return "SCISSOR"
        }
    }

}

