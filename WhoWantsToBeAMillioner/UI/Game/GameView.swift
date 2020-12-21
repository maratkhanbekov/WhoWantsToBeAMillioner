import UIKit

class GameView: UIView {
    
    let logoImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let questionLabel: UILabel = {
        let label = UILabel()
        label.text = "Question"
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .black
        label.layer.cornerRadius = 20
        label.font = .systemFont(ofSize: 20, weight: .bold)
        label.clipsToBounds = true
        label.layer.borderWidth = 1
        label.layer.borderColor = UIColor.white.cgColor
        label.numberOfLines = 0
        label.lineBreakMode = .byWordWrapping
        return label
    }()
    
    let answerAButton: UIButton = {
        let button = UIButton()
        button.setTitle("Answer", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 1
        return button
    }()
    
    let answerBButton: UIButton = {
        let button = UIButton()
        button.setTitle("Answer", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 2
        return button
    }()
    
    let answerDButton: UIButton = {
        let button = UIButton()
        button.setTitle("Answer", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 4
        return button
    }()
    
    let answerCButton: UIButton = {
        let button = UIButton()
        button.setTitle("Answer", for: .normal)
        button.tintColor = .white
        button.titleLabel?.font = .systemFont(ofSize: 14)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.layer.cornerRadius = 10
        button.clipsToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.white.cgColor
        button.tag = 3
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func updateConstraints() {
        super.updateConstraints()
        
        NSLayoutConstraint.activate([
            logoImage.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            logoImage.widthAnchor.constraint(equalToConstant: 100),
            logoImage.heightAnchor.constraint(equalToConstant: 100),
            logoImage.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            questionLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 70),
            questionLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            questionLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            questionLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            questionLabel.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            answerAButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -120),
            answerAButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            answerAButton.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -10),
            answerAButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            answerBButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -120),
            answerBButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            answerBButton.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            answerBButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            answerCButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
            answerCButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            answerCButton.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -10),
            answerCButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            answerDButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -60),
            answerDButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            answerDButton.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 10),
            answerDButton.heightAnchor.constraint(equalToConstant: 30)
        ])
        
    }
    
    func show(_ question: Question) {
        questionLabel.text = question.question
        answerAButton.setTitle(question.answerA, for: .normal)
        answerBButton.setTitle(question.answerB, for: .normal)
        answerCButton.setTitle(question.answerC, for: .normal)
        answerDButton.setTitle(question.answerD, for: .normal)
    }
    
   
    func setup() {
        backgroundColor = .black
        
        addSubview(logoImage)
        addSubview(questionLabel)
        addSubview(answerAButton)
        addSubview(answerBButton)
        addSubview(answerCButton)
        addSubview(answerDButton)
        updateConstraints()
    }
}
