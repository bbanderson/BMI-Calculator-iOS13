//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by HYUNHONG BYUN on 2020/04/08.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiResult: String?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmi = weight / pow(height, 2)
        bmiResult = String(format: "%.1f", bmi)
    }
    
    func getBMIValue() -> String {
        return bmiResult!
    }
    
}
