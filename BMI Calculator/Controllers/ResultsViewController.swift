    //
    //  ResultsViewController.swift
    //  BMI Calculator
    //
    //  Created by IACD-013 on 2022/07/03.
    //  Copyright © 2022 Angela Yu. All rights reserved.
    //

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var adviceLabel: UILabel!
    private var bmiValue: Double = 0.0
    private var advice: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        assignBMI(bmi: bmiValue)
        assignAdvice(adive: advice)
        
        resultLabel.text = "\(bmiValue)"
        adviceLabel.text = advice
        
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        self.dismiss(animated: true)
    }
    
    func assignBMI (bmi CalculatedValue: Double){
        bmiValue = CalculatedValue
    }
    
    func assignAdvice(adive: String){
        advice = adive
    }
    
    
    
}
