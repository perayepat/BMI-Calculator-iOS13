//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let newHeight = Double(sender.value).rounded(toPlaces: 1)
        heightLabel.text = "\(newHeight) m"
        
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let newWeight = Int(sender.value)
        weightLabel.text = "\(newWeight) Kg"
    }
}

