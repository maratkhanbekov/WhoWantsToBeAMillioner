import UIKit

class AddQuestionViewController: UIViewController {
    
    let rootView = AddQuestionView()
    var rightAnswer: Answers = .A
    
    override func loadView() {
        super.loadView()
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        rootView.rigthQuestionSegmentedControl.addTarget(self, action: #selector(rigthQuestionSegmentedControlPressed(_:)), for: .valueChanged)
        
        rootView.questionButton.addTarget(self, action: #selector(questionButtonPressed), for: .touchUpInside)
    }
    
    @objc
    func rigthQuestionSegmentedControlPressed(_ sender: UISegmentedControl) {
        
        switch sender.selectedSegmentIndex {
        case 0:
            rightAnswer = .A
        case 1:
            rightAnswer = .B
        case 2:
            rightAnswer = .C
        case 3:
            rightAnswer = .D
        default:
            rightAnswer = .A
        }
    }
    
    @objc
    func questionButtonPressed() {
        
        guard let questionText = rootView.questionTextField.text,
        let answerA = rootView.answerATextField.text,
        let answerB = rootView.answerBTextField.text,
        let answerC = rootView.answerCTextField.text,
        let answerD = rootView.answerDTextField.text
        
        else { return }
        
        let question = Question(
            question: questionText, answerA: answerA, answerB: answerB, answerC: answerC, answerD: answerD, rightAnswer: rightAnswer)
        Game.shared.saveQuestion(question)
        self.dismiss(animated: true, completion: nil)
    }
}
