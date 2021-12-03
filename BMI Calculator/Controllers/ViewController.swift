import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var heightSlider: UISlider!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var weightSlider: UISlider!
    
    var calculatorBrain = CalculatorBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onHeightChange(_ sender: UISlider) {
        let height = String(format: "$.2f", sender.value)
        
        heightLabel.text = "\(height)m"
    }
    
    @IBAction func onWeightChange(_ sender: UISlider) {
        let weight = String(format: "%.0f", sender.value)
        
        weightLabel.text = "\(weight)kg"
    }
    
    @IBAction func calculateBMI(_ sender: Any) {
        calculatorBrain.calculateBMI(weight: heightSlider.value, height: weightSlider.value)
        
        self.performSegue(withIdentifier: "goToResultScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToResultScreen" {
            let resultVC = segue.destination as! ResultViewController
            resultVC.bmi = calculatorBrain.getBMI()
            resultVC.advice = calculatorBrain.getAdvice()
            resultVC.color = calculatorBrain.getColor()
        }
    }
    
}

