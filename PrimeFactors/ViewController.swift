import UIKit

public class ViewController: UIViewController {

    @IBOutlet weak public var primesInput: UITextField!
    
    @IBOutlet weak public var primesLabel: UILabel!
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        primesLabel.text = ""
    }
    
    @IBAction public func generatePrimes() {
        let userInput = Int(primesInput.text!) ?? 0
        primesLabel.text = "\(PrimeFactors.generate(userInput))"
        
    }
}

