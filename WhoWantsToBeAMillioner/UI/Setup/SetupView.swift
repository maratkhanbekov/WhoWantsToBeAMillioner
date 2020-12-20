import UIKit

class SetupView: UIView {
    
    let questionSeqLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "В каком порядке задавать вопросы?"
        label.textColor = .white
        return label
    }()
    
    let questionSegmentedControl: UISegmentedControl = {
        let control = UISegmentedControl(items: ["Последовательно", "В случайном порядке"])
        control.translatesAutoresizingMaskIntoConstraints = false
        control.selectedSegmentIndex = 0
        control.tintColor = .red
        control.backgroundColor = UIColor.gray
        return control
        
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
            questionSeqLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            questionSeqLabel.centerYAnchor.constraint(equalTo: topAnchor, constant: 60)
        ])
        
        NSLayoutConstraint.activate([
            questionSegmentedControl.centerXAnchor.constraint(equalTo: centerXAnchor),
            questionSegmentedControl.centerYAnchor.constraint(equalTo: questionSeqLabel.bottomAnchor, constant: 30)
        ])
    }
    
    private func setup() {
        backgroundColor = .black
        addSubview(questionSeqLabel)
        addSubview(questionSegmentedControl)
        updateConstraints()
    }
    
}
