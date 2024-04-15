//
//  SecondVC.swift
//  Homework17
//
//  Created by Nodiko Gachava on 15.04.24.
//

import UIKit

class SecondVC: UIViewController {
    let image1 = UIImageView()
    let button = UIButton(frame: CGRect(x: 0, y: 0, width: 290, height: 48))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        addImage1()
        addButton()
        
    }
    
    func addImage1(){
        view.addSubview(image1)
        image1.image = UIImage(named: "Rectangle 1")
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        image1.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        image1.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        image1.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    }
    
    func addButton(){
        view.addSubview(button)
        button.setTitle("ახალი წუწუნ ბარათის დამატება ", for: .normal)
        button.layer.cornerRadius = 15
        button.titleLabel?.font = UIFont(name: "FiraGO", size: 14)
        button.backgroundColor = .systemBlue
        button.translatesAutoresizingMaskIntoConstraints = false
        button.topAnchor.constraint(equalTo: view.topAnchor, constant: 660).isActive = true
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.heightAnchor.constraint(equalToConstant: 48).isActive = true
        button.widthAnchor.constraint(equalToConstant: 290).isActive = true
        button.addTarget(self, action: #selector(goToThirdVC), for: .touchUpInside)
    }
    
    @objc func goToThirdVC(){
        let thirdVC = ThirdVC()
        thirdVC.modalPresentationStyle = .fullScreen
        self.present(thirdVC, animated: true)
    }
}


