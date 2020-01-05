//
//  ViewController.swift
//  ColdCall
//
//  Created by Abbey Averill on 3/20/19.
//  Copyright © 2019 Erin Averill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameDisplayedLabel: UILabel!
    @IBOutlet weak var numberDisplayedLabel: UILabel!
    let name = ["Jessica", "Bernice","Daveed","Pilar","Alesia"]
    var number = ["1","2","3","4","5"]
    @IBAction func coldCallButtonPressed(_ sender: UIButton) {
        print("Cold call button pressed")
        nameDisplayedLabel.text = name[Int.random(in: 0..<5)]
        if numberDisplayedLabel.isHidden == true {
            numberDisplayedLabel.isHidden = false
        }
        numberDisplayedLabel.text = number[Int.random(in: 0..<5)]
        if numberDisplayedLabel.text == "1" || numberDisplayedLabel.text == "2" {
            numberDisplayedLabel.textColor = UIColor.red
        }
        else if numberDisplayedLabel.text == "3" || numberDisplayedLabel.text == "4" {
            numberDisplayedLabel.textColor = UIColor.orange
        }
        else {
            numberDisplayedLabel.textColor = UIColor.green
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        nameDisplayedLabel.text = "Ready?"
        numberDisplayedLabel.isHidden = true
    }


}

