//
//  FirstVC.swift
//  Homework17
//
//  Created by Nodiko Gachava on 15.04.24.
//

import UIKit

class FirstVC: UIViewController {
    let image1 = UIImageView()
    let label1 = UILabel()
    let button1 = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
    }
    //MARK: FUNCTIONS
    func style(){
        addBackgroundImage()
        addLabel1()
        addButton1()
    }
    
    func addBackgroundImage (){
        view.addSubview(image1)
        image1.image = UIImage(named: "Group 4")
        
        image1.translatesAutoresizingMaskIntoConstraints = false
        
        image1.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        image1.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        image1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 30).isActive = true
        image1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:  -100 ).isActive = true
    }
    
    func addLabel1(){
        view.addSubview(label1)
        label1.text = """
            შედი
            აპლიკაციაში
            და იწუწუნე
            რამდენიც გინდა
            """
        label1.textAlignment = .left
        label1.textColor = .white
        label1.numberOfLines = 4
        label1.font = UIFont(name: "FiraGO", size: 30)
        label1.font = UIFont.systemFont(ofSize: 30)
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        label1.topAnchor.constraint(equalTo: view.topAnchor, constant: 382).isActive = true
        label1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 21).isActive = true
        label1.widthAnchor.constraint(equalToConstant: 263).isActive = true
        label1.heightAnchor.constraint(equalToConstant: 192).isActive = true
    }
    
    func addButton1(){
        view.addSubview(button1)
        button1.setTitle("დაწყება", for: .normal)
        button1.layer.cornerRadius = 15
        button1.backgroundColor = .systemBlue
        button1.translatesAutoresizingMaskIntoConstraints = false
        button1.topAnchor.constraint(equalTo: view.topAnchor, constant: 664).isActive = true
        button1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 222).isActive = true
        button1.widthAnchor.constraint(equalToConstant: 123).isActive = true
        button1.heightAnchor.constraint(equalToConstant: 48).isActive = true
        button1.addTarget(self, action: #selector(moveToSecondVC), for: .touchUpInside)
    }
    
    @objc func moveToSecondVC(){
        let secondVC = SecondVC()
        self.navigationController?.pushViewController(secondVC, animated: true)

    }
}
