import UIKit

class GameViewController: UIViewController {
    var gameSession: GameSession?
    var question: Question?
    let rootView = GameView()
    
    
    override func loadView() {
        super.loadView()
        view = rootView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startGame()
        
        rootView.answerAButton.addTarget(self, action: #selector(acceptAnswer), for: .touchUpInside)
        rootView.answerBButton.addTarget(self, action: #selector(acceptAnswer), for: .touchUpInside)
        rootView.answerCButton.addTarget(self, action: #selector(acceptAnswer), for: .touchUpInside)
        rootView.answerDButton.addTarget(self, action: #selector(acceptAnswer), for: .touchUpInside)
        
    }
    
    override func viewDidLayoutSubviews() {
        makeGradient(for: rootView)
    }
    
    func makeGradient(for view: UIView) {
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [UIColor.black.cgColor, UIColor.blue.cgColor]
        gradient.locations = [0.0 , 1.0]
        gradient.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradient.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradient.frame = view.bounds
        view.layer.insertSublayer(gradient, at: 0)
    }
    
    func startGame() {
        gameSession = GameSession()
        Game.shared.gameSession = gameSession
        
        question = gameSession?.getNewQuestion()
        guard let question = question else { return }
        rootView.show(question)
        
    }
    
    @objc
    func acceptAnswer(sender: UIButton) {
        sender.backgroundColor = .orange
        rootView.isUserInteractionEnabled = false
    
        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
            guard let answer = Answers(rawValue: sender.tag), let question = self.question else { return }
            
            let result = self.gameSession?.check(answer: answer, for: question)
            if result! {
                sender.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
                sender.tintColor = .black
                self.gameSession?.addRightAnswer()
            }
            else {
                sender.backgroundColor = #colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1)
                self.gameSession?.addWrongAnswer()
            }
         }
        
        Timer.scheduledTimer(withTimeInterval: 4, repeats: false) { _ in
            sender.backgroundColor = .black
            
            if self.gameSession!.nextRound() {
                self.question = self.gameSession?.getNewQuestion()
                guard let question = self.question else { return }
                self.rootView.show(question)
                self.rootView.isUserInteractionEnabled = true
            }
            else {
                Game.shared.saveGameResult()
                Game.shared.gameSession = nil
                self.dismiss(animated: true, completion: nil)
            }
            
        }
    }
}


