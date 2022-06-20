//
//  Extensions.swift
//  BMI Calculator
//
//  Created by IACD-013 on 2022/06/20.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

extension Double {
    /// Rounds the double to decimal places value
    func rounded(toPlaces places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
