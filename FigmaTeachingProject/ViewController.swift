import UIKit

class ViewController: UIViewController {
    
    var imageView: UIImageView = {
        let someImageView = UIImageView()
        let generalImage = UIImage(named: "Image.png")
        someImageView.image = generalImage
        return someImageView
    }()
    
    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Это зеленый значек с галочкой"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 25)
        return label
    }()
    
    var firstButton: UIButton = {
        let firstButton = UIButton()
        firstButton.backgroundColor = .white
        firstButton.layer.cornerRadius = 15
        firstButton.setTitle("Первая кнопка", for: .normal)
        firstButton.setTitleColor(.orange, for: .normal)
        firstButton.titleLabel?.font = .systemFont(ofSize: 25)
        return firstButton
    }()
    
    var secondButton: UIButton = {
        let secondButton = UIButton()
        secondButton.backgroundColor = .white
        secondButton.layer.cornerRadius = 15
        secondButton.setTitle("Вторая кнопка", for: .normal)
        secondButton.setTitleColor(.orange, for: .normal)
        secondButton.titleLabel?.font = .systemFont(ofSize: 25)
        return secondButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .orange
        self.view.addSubview(imageView)
        self.view.addSubview(titleLabel)
        self.view.addSubview(firstButton)
        self.view.addSubview(secondButton)
        
        
        imageViewConstraints(imageView: imageView, view: view)
        titleLabelConstraints(titleLabel: titleLabel, imageView: imageView, view: view)
        firstButtonConstraints(firstButton: firstButton, titleLabel: titleLabel, view: view)
        secondButtonConstraints(firstButton: firstButton, secondButton: secondButton, view: view)
        
    }
    
    func imageViewConstraints(imageView: UIImageView, view: UIView) {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
    }
    
    func titleLabelConstraints(titleLabel: UILabel, imageView: UIImageView, view: UIView) {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        titleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 40).isActive = true
    }
    
    func firstButtonConstraints(firstButton: UIButton, titleLabel: UILabel, view: UIView) {
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        firstButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60).isActive = true
        firstButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60).isActive = true
        firstButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 60).isActive = true
        firstButton.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }

    func secondButtonConstraints(firstButton: UIButton, secondButton: UIButton, view: UIView) {
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        secondButton.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 60).isActive = true
        secondButton.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -60).isActive = true
        secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 40).isActive = true
        secondButton.heightAnchor.constraint(equalToConstant: 70).isActive = true

    }
    
    
}

// Проверка комита
// Вторая проверка комита
