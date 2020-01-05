//
//  ViewController.swift
//  tic_tac_toe
//
//  Created by Abbey Averill on 3/28/19.
//  Copyright © 2019 Erin Averill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var whoWonLabel: UILabel!
    var player: Int!
    var game: Game!
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet var buttonArray: [UIButton]!
    
    
    @IBAction func boardPressed(_ sender: UIButton) {
//        print("button pressed", sender.tag)
        if player == 1 {
            sender.backgroundColor = UIColor.red
        }
        else {
            sender.backgroundColor = UIColor.purple
        }
        game.moveByPlayer(player: player, space: sender.tag)
        let result = game.checkForWin(spotTaken:  sender.tag )
        if result == "win" {
            whoWonLabel.isHidden = false
            winnerLabel.text = "Player \(player!) won!"
            for button in buttonArray {
                button.isEnabled = false
            }
        }
        else if result == "tie" {
            whoWonLabel.isHidden = false
            winnerLabel.text = "It's a tie!"
        }
        else {
            if player == 1 {
            player = 2
        }
            else {
                player = 1
            }
        }
        sender.isEnabled = false
    }
    
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        game.reset()
        for button in buttonArray {
            button.isEnabled = true
            button.backgroundColor = UIColor.gray
        }
        player = 1
        winnerLabel.text = ""
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        player = 1
        // Do any additional setup after loading the view, typically from a nib.
        game = Game()
        whoWonLabel.isHidden = true
    }


}

