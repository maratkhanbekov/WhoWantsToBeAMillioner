import UIKit

class MainView: UIView {
    
    
    let logoImage: UIImageView = {
       let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.image = UIImage(named: "logo")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    let playGameButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Играть", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 44)
        button.tintColor = .white
        return button
    }()
    
    let showGameRecordsButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Результаты", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 20)
        button.tintColor = .white
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
            logoImage.widthAnchor.constraint(equalToConstant: 200),
            logoImage.heightAnchor.constraint(equalToConstant: 200),
            logoImage.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        NSLayoutConstraint.activate([
            playGameButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            playGameButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 40),
        ])
        
        NSLayoutConstraint.activate([
            showGameRecordsButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            showGameRecordsButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 100),
        ])
    }
    
    func setup() {
        backgroundColor = .black
        
        addSubview(logoImage)
        addSubview(playGameButton)
        addSubview(showGameRecordsButton)
    
        updateConstraints()
    }
    
}
