//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by IACD-013 on 2022/07/03.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
   private var bmiValue: Double = 0.0
    @IBOutlet private var bmILabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignBMI(bmi: bmiValue)
//        let label = UILabel()
//        label.text = "0.0KG"
//        label.frame = CGRect(x: 0, y: 0, width: 100, height: 50)
//        //put the label on the view
//        /// we can put the UILablel because it inherits from UIView
//        view.addSubview(label)
        
    }
    
    func assignBMI (bmi CalculatedValue: Double){
        bmiValue = CalculatedValue
        bmILabel.text = String(bmiValue)
        
    }
}


