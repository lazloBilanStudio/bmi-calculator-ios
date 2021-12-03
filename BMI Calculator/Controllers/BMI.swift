import UIKit

struct BMI {
    let value: Float
    let advice: String
    let color: UIColor
    
    init(value: Float, advice: String, color: UIColor) {
        self.advice = advice
        self.color = color
        self.value = value
    }
}
