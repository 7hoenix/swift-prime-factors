import XCTest
import PrimeFactors

class ViewControllerTest: XCTestCase {
    

    func testExists() {
        let label = UILabel()
        let controller = ViewController()
        controller.primesLabel = label
    }
    
    func testClearsPrimesOnLoad() {
        let primesLabel = UILabel()
        primesLabel.text = "Original Text"
        let controller = ViewController()
        controller.primesLabel = primesLabel
        controller.viewDidLoad()
        
        XCTAssertEqual(primesLabel.text, "")
    }
    
    func testShowsPrimesOnGenerate() {
        let primesLabel = UILabel()
        let primesInput = UITextField()
        let controller = ViewController()
        controller.primesLabel = primesLabel
        controller.primesInput = primesInput
        primesInput.text = "12"
        
        controller.generatePrimes()
        
        XCTAssertEqual(primesLabel.text, "[2, 2, 3]")
    }
    
}
