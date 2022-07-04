//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by IACD-013 on 2022/07/03.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    private var bmi: BMI?
    
    mutating func calculateBMI(h height: Double, w weight: Int) {
        let squareOfHeight = height * height
        let calulatedBmi = Double(Double(weight) / squareOfHeight).rounded(toPlaces: 1)

        if calulatedBmi < 18.5 {
            bmi = BMI(value: calulatedBmi, advice: "Your're underweight", color: .cyan)
        } else if calulatedBmi < 24.9 {
            bmi = BMI(value: calulatedBmi, advice: "You're fine", color: .green)
        } else {
            bmi = BMI(value: calulatedBmi, advice: "You're overweight", color: .red)
        }
    }
    
    func getBMI() -> Double{
        return bmi?.value ?? 0.0
    }
    
    func getAdvice() -> String{
        return bmi?.advice ?? "No advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? .gray
    }
}
