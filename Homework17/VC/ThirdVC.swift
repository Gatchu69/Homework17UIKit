//
//  ThirdVC.swift
//  Homework17
//
//  Created by Nodiko Gachava on 15.04.24.
//

import UIKit

class ThirdVC: UIViewController {
    let label1 = UILabel()
    let textField1 = UITextField()
    let label2 = UILabel()
    let textField2 = UITextField()
    let image1 = UIImageView()
    let button = UIButton()
    let icon1 = UIButton()
    let icon2 = UIButton()
    let icon3 = UIButton()
    let icon4 = UIButton()
    let label3 = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
    }
    
    func style(){
        addImage()
        addLabel()
        addTextField()
        addLabel2()
        addTextField2()
        addButton()
        addIcon1()
        addIcon2()
        addIcon3()
        addIcon4()
        addLabel3()
    }
    
    func addImage(){
        view.addSubview(image1)
        image1.image = UIImage(named: "Rectangle 1")
        image1.translatesAutoresizingMaskIntoConstraints = false
        image1.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        image1.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        image1.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        image1.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
    }
    
    func addLabel(){
        view.addSubview(label1)
        label1.text = "სათაური"
        label1.textAlignment = .left
        label1.textColor = .white
        label1.font = UIFont(name: "FiraGO", size: 14)
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.topAnchor.constraint(equalTo: view.topAnchor, constant: 91).isActive = true
        label1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 43).isActive = true
    }
    
    func addLabel2(){
        view.addSubview(label2)
        label2.text = "არწერა"
        label2.font = UIFont(name: "FiraGo", size: 14)
        label2.textAlignment = .left
        label2.textColor = .white
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.topAnchor.constraint(equalTo: view.topAnchor, constant: 174).isActive = true
        label2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 43).isActive = true
    }
    
    func addTextField(){
        view.addSubview(textField1)
        textField1.placeholder = "  გვეშველება რამე ?"
        textField1.layer.cornerRadius = 9
        textField1.layer.borderWidth = 1
        textField1.layer.borderColor = UIColor.gray.cgColor
        textField1.translatesAutoresizingMaskIntoConstraints = false
        textField1.widthAnchor.constraint(equalToConstant: 310).isActive = true
        textField1.heightAnchor.constraint(equalToConstant: 45).isActive = true
        textField1.topAnchor.constraint(equalTo: view.topAnchor, constant: 118).isActive = true
        textField1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 33).isActive = true
    }
    
    func addTextField2(){
        view.addSubview(textField2)
        textField2.placeholder = "I AM UNDER WATER CAN YOU HELP ME?"
        textField2.layer.cornerRadius = 9
        textField2.layer.borderWidth = 1
        textField2.layer.borderColor = UIColor.gray.cgColor
        textField2.translatesAutoresizingMaskIntoConstraints = false
        textField2.widthAnchor.constraint(equalToConstant: 310).isActive = true
        textField2.heightAnchor.constraint(equalToConstant: 45).isActive = true
        textField2.topAnchor.constraint(equalTo: view.topAnchor, constant: 201).isActive = true
        textField2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 33).isActive = true
    }
    
    func addButton(){
        view.addSubview(button)
        button.setTitle("დამატება", for: .normal)
        button.titleLabel?.font = UIFont(name: "FiraGO", size: 14)
        button.backgroundColor = .green
        button.translatesAutoresizingMaskIntoConstraints = false
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.topAnchor.constraint(equalTo: view.topAnchor, constant: 661).isActive = true
        button.addTarget(self, action: #selector (addToSecondVC), for: .touchUpInside)
    }
    
    func addLabel3(){
        view.addSubview(label3)
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.text = "აირჩიეთ აიქონი"
        label3.textColor = .white
        label3.textAlignment = .left
        label3.font = UIFont(name: "FiraGo", size: 14)
        label3.topAnchor.constraint(equalTo: view.topAnchor, constant: 275).isActive = true
        label3.leftAnchor.constraint(equalTo: view.leftAnchor, constant:  43).isActive = true
    }
    
    func addIcon1(){
        view.addSubview(icon1)
        icon1.setImage(UIImage(named: "Frame 62"), for: .normal)
        icon1.translatesAutoresizingMaskIntoConstraints = false
        icon1.topAnchor.constraint(equalTo: view.topAnchor, constant: 313).isActive = true
        icon1.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 62).isActive = true
        icon1.widthAnchor.constraint(equalToConstant: 40).isActive = true
        icon1.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
    
    func addIcon2(){
        view.addSubview(icon2)
        icon2.setImage(UIImage(named: "Frame 63"), for: .normal)
        icon2.translatesAutoresizingMaskIntoConstraints = false
        icon2.topAnchor.constraint(equalTo: view.topAnchor, constant: 313).isActive = true
        icon2.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 129).isActive = true
        icon2.widthAnchor.constraint(equalToConstant: 40).isActive = true
        icon2.heightAnchor.constraint(equalToConstant: 40).isActive = true
        }
    
    func addIcon3(){
        view.addSubview(icon3)
        icon3.setImage(UIImage(named: "Frame 64"), for: .normal)
        icon3.translatesAutoresizingMaskIntoConstraints = false
        icon3.topAnchor.constraint(equalTo: view.topAnchor, constant: 313).isActive = true
        icon3.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 196).isActive = true
        icon3.widthAnchor.constraint(equalToConstant: 40).isActive = true
        icon3.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
    }
    
    func addIcon4(){
        view.addSubview(icon4)
        icon4.setImage(UIImage(named: "Frame 65"), for: .normal)
        icon4.translatesAutoresizingMaskIntoConstraints = false
        icon4.topAnchor.constraint(equalTo: view.topAnchor, constant: 313).isActive = true
        icon4.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 263).isActive = true
        icon4.widthAnchor.constraint(equalToConstant: 40).isActive = true
        icon4.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    @objc func addToSecondVC(){
        self.dismiss(animated: true)
    }
    
}


 



//#Preview{
//    ThirdVC()
//}
