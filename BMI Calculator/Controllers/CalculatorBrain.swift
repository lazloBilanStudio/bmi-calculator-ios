import UIKit

struct CalculatorBrain {
    var bmi: BMI?
    
    func getBMI() -> String {
        return String(format: "%.0f", bmi?.value ?? 0.0)
    }
    
    func getColor () -> UIColor {
        return bmi?.color ?? .white
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? ""
    }
    
    mutating func calculateBMI(weight: Float, height: Float) {
        let value = weight / pow(height, 2)
        
        if value > 30 {
            bmi = BMI(value: value, advice: "eat more!", color: .systemGreen)
        } else {
            bmi = BMI(value: value, advice: "eat less!", color: .systemRed)
        }
    }
}
