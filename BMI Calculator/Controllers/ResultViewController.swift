import UIKit

class ResultViewController: UIViewController {
    var bmi: String = ""
    var advice: String = ""
    var color: UIColor = .white

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = bmi
        view.backgroundColor = color
    }
    
    @IBAction func closeScreen(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}
