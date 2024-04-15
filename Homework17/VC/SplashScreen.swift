//
//  ViewController.swift
//  Homework17
//
//  Created by Nodiko Gachava on 15.04.24.
//

import UIKit

class SplashScreen: UIViewController {
    let image1 = UIImageView()
    let label1: UILabel = {
        let labelSt = UILabel()
        labelSt.text = "წუწუნის Hub"
        labelSt.textAlignment = .center
        labelSt.textColor = .white
        labelSt.font = UIFont(name: "FiraGO", size: 30)
        labelSt.font = UIFont.systemFont(ofSize: 30)
        return labelSt
    }()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        
    }
    //MARK: ----FUNCTIONS----
    func style(){
        addImage1()
        addLabel()
        pushToFirstVC()
    }
    
    func pushToFirstVC(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let vc = FirstVC()
            self.navigationController?.pushViewController(vc, animated: true)
        }
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
    
    func addLabel(){
        view.addSubview(label1)
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label1.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    

}

