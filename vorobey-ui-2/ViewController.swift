//
//  ViewController.swift
//  vorobey-ui-2
//
//  Created by Павел Бубликов on 06.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    var firstButton: UIButton = Button(text: "First Button")
    var secondButton: UIButton = Button(text: "Second Medium Button")
    var thirdButton: UIButton = Button(text: "Open")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        view.addSubview(thirdButton)
        setupLayout()
        
        thirdButton.addTarget(self, action: #selector(openModal), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    
    private func setupLayout() {
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        thirdButton.translatesAutoresizingMaskIntoConstraints = false
        
        firstButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 35).isActive = true
        thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 35).isActive = true
        
        firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        thirdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @objc private func openModal() {
        let vc = UIViewController()
        vc.view.backgroundColor = .white
        self.present(vc, animated: true)
    }
}

