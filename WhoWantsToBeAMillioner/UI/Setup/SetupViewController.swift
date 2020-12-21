import UIKit

class SetupViewController: UIViewController {
    
    let rootView = SetupView()
        
    override func loadView() {
        super.loadView()
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rootView.questionSegmentedControl.addTarget(self, action: #selector(questionSegmentedControlChanged(_:)), for: .valueChanged)
        
    }
    
    @objc
    func questionSegmentedControlChanged(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            return Game.shared.questionSequenceMode = .Consistently
        case 1:
            return Game.shared.questionSequenceMode = .RandomOrder
        default:
            return Game.shared.questionSequenceMode = .Consistently
        }
    }

}
