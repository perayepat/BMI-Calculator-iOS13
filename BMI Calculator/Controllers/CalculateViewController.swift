    //
    //  ViewController.swift
    //  BMI Calculator
    //
    //  Created by Angela Yu on 21/08/2019.
    //  Copyright © 2019 Angela Yu. All rights reserved.
    //

import UIKit

class CalculateViewController: UIViewController {
    
    var calculatorBrain = CalculatorBrain()
    
    @IBOutlet var heightLabel: UILabel!
    @IBOutlet var weightLabel: UILabel!
    
    var height: Double = 0.0
    var weight: Int = 0
  
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func heightSliderChanged(_ sender: UISlider) {
        let newHeight = Double(sender.value).rounded(toPlaces: 1)
        height = newHeight
        heightLabel.text = "\(newHeight) m"
        
            //Rounding using the string formatter
            // String(format: "%.2f", sender.value)
        
        
    }
    @IBAction func weightSliderChanged(_ sender: UISlider) {
        let newWeight = Int(sender.value)
        weight = newWeight
        weightLabel.text = "\(newWeight) Kg"
    }
    
    @IBAction func calculateButtonPressed(_ sender: Any) {
        calculatorBrain.calculateBMI(h: height, w: weight)
        performSegue(withIdentifier: "goToResult", sender: self)
    }
    
    //called before peform segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResults"{
            let destinationVC = segue.destination as! ResultsViewController
            destinationVC.assignBMI(bmi: calculatorBrain.getBMI())
            destinationVC.assignAdvice(adive: calculatorBrain.getAdvice())
            destinationVC.view.backgroundColor = calculatorBrain.getColor()
            
        }
    }
    
        
    

}

