import UIKit


class AddQuestionView: UIView {
    
    let questionTextField: UITextField = {
       let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.attributedPlaceholder = NSAttributedString(string: "Введите вопрос", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.white.cgColor
        field.backgroundColor = .black
        field.textColor = .gray
        return field
    }()
    
    let answerATextField: UITextField = {
       let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.attributedPlaceholder = NSAttributedString(string: "Ответ А", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.white.cgColor
        field.backgroundColor = .black
        field.textColor = .white
        return field
    }()
    
    let answerBTextField: UITextField = {
       let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.attributedPlaceholder = NSAttributedString(string: "Ответ B", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.white.cgColor
        field.backgroundColor = .black
        field.textColor = .white
        return field
    }()
    
    let answerCTextField: UITextField = {
       let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.attributedPlaceholder = NSAttributedString(string: "Ответ C", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.white.cgColor
        field.backgroundColor = .black
        field.textColor = .white
        return field
    }()
    
    let answerDTextField: UITextField = {
       let field = UITextField()
        field.translatesAutoresizingMaskIntoConstraints = false
        field.attributedPlaceholder = NSAttributedString(string: "Ответ D", attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        field.layer.borderWidth = 1
        field.layer.borderColor = UIColor.white.cgColor
        field.backgroundColor = .black
        field.textColor = .white
        return field
    }()
    
    let rigthQuestionSegmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: ["A", "B", "C", "D"])
        control.translatesAutoresizingMaskIntoConstraints = false
        control.selectedSegmentIndex = 0
        control.tintColor = .red
        control.backgroundColor = UIColor.gray
        return control
    }()
    
    let questionButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Сохранить вопрос", for: .normal)
        button.tintColor = .white
        return button
    }()
    
    init() {
        super.init(frame: .zero)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    override func updateConstraints() {
        super.updateConstraints()
        

        NSLayoutConstraint.activate([
            questionTextField.centerXAnchor.constraint(equalTo: centerXAnchor),
            questionTextField.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            questionTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            questionTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            questionTextField.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            answerATextField.topAnchor.constraint(equalTo: questionTextField.bottomAnchor, constant: 10),
            answerATextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            answerATextField.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -5),
            answerATextField.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            answerBTextField.topAnchor.constraint(equalTo: questionTextField.bottomAnchor, constant: 10),
            answerBTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            answerBTextField.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 5),
            answerBTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            answerCTextField.topAnchor.constraint(equalTo: questionTextField.bottomAnchor, constant: 50),
            answerCTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            answerCTextField.trailingAnchor.constraint(equalTo: centerXAnchor, constant: -5),
            answerCTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            answerDTextField.topAnchor.constraint(equalTo: questionTextField.bottomAnchor, constant: 50),
            answerDTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            answerDTextField.leadingAnchor.constraint(equalTo: centerXAnchor, constant: 5),
            answerDTextField.heightAnchor.constraint(equalToConstant: 30)
        ])
        
        NSLayoutConstraint.activate([
            rigthQuestionSegmentedControl.topAnchor.constraint(equalTo: answerCTextField.bottomAnchor, constant: 10),
            rigthQuestionSegmentedControl.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            questionButton.topAnchor.constraint(equalTo: rigthQuestionSegmentedControl.bottomAnchor, constant: 10),
            questionButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            questionButton.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func setup() {
        backgroundColor = .black
        addSubview(questionTextField)
        addSubview(answerATextField)
        addSubview(answerBTextField)
        addSubview(answerCTextField)
        addSubview(answerDTextField)
        addSubview(rigthQuestionSegmentedControl)
        addSubview(questionButton)
        updateConstraints()
    }
    
}
