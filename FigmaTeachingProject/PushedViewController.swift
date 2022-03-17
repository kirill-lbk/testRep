import UIKit
import Foundation

class PushedViewController: UIViewController {

    var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Это зеленый значек с галочкой"
        label.numberOfLines = 0
        label.textAlignment = .center
        label.textColor = .white
        label.font = .systemFont(ofSize: 25)
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = .orange
                
        self.view.addSubview(titleLabel)
                
        titleLabelConstraints(titleLabel: titleLabel, view: view)
        
    }
    
    func titleLabelConstraints(titleLabel: UILabel, view: UIView) {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 40).isActive = true
    }
   
}
