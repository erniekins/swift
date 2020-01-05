//
//  ViewController.swift
//  tipster
//
//  Created by Abbey Averill on 4/3/19.
//  Copyright © 2019 Erin Averill. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    percent being changed
    @IBOutlet weak var tipPercentSlider: UISlider!
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    @IBAction func tipPercentChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        let extraFivePercent = currentValue + 5
        let extraTenPercent = currentValue + 10
//        print(currentValue)
        tipPercentLabel.text = "\(currentValue)%"
        tipPercentLabelPlusFive.text = "\(extraFivePercent)%"
        tipPercentLabelPlusTen.text = "\(extraTenPercent)%"
    }
    
//   group size is being changed
    
    @IBOutlet weak var groupSizeLabel: UILabel!
    @IBOutlet weak var groupSizeSlider: UISlider!
    @IBAction func groupSizeChanged(_ sender: UISlider) {
        let currentValue = Int(sender.value)
        print(currentValue)
        groupSizeLabel.text = "Group Size: \(currentValue)"
        
    }
// Need to have percent increase by 5% from the first label to the second and the third
    @IBOutlet weak var tipPercentLabelPlusFive: UILabel!
    @IBOutlet weak var tipPercentLabelPlusTen: UILabel!
    
 //Buttons being pressed to add numbers to the tip calculator
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

