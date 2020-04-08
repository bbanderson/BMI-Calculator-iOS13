//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by HYUNHONG BYUN on 2020/04/08.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmiResult: BMI?
    
    mutating func calculateBMI(_ height: Float, _ weight: Float) {
        let bmi = weight / pow(height, 2)
        
        if bmi < 18.5 {
            print("Underweight")
            bmiResult = BMI(value: bmi, advice: "Eat more pies!", color: #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1))
        } else if bmi <= 24.9 {
            print("Normal")
            bmiResult = BMI(value: bmi, advice: "Fit as a fiddle!", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))
        } else {
            print("Overweight")
            bmiResult = BMI(value: bmi, advice: "Eat less pies!", color: #colorLiteral(red: 1, green: 0.2324924469, blue: 0.4100492597, alpha: 1))
        }
        
//        bmiResult?.value = Float(bmi)
    }
    
//    func getAdvice(_ bmi: Float) -> String {
//        if bmi < 18.5 {
//            print("Underweight")
//            return "Underweight"
//        } else if bmi <= 24.9 {
//            print("Normal")
//            return "Normal"
//        } else {
//            print("Overweight")
//            return "Overweight"
//        }
//    }
//
//    func getColor(_ bmi: Float) -> UIColor {
//        if bmi < 18.5 {
//            return UIColor.green
//        } else if bmi <= 24.9 {
//            return UIColor.yellow
//        } else {
//            return UIColor.red
//        }
//    }
    
    func getAdvice() -> String {
        if let bmi = bmiResult {
            return bmi.advice
        } else {
            return ""
        }
    }
    
    func getColor() -> UIColor {
        return bmiResult?.color ?? UIColor.white
    }
    
    func getBMIValue() -> String {
        return String(format: "%.1f", bmiResult?.value ?? 0.0)
    }
    
}
