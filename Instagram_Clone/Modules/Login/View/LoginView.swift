//
//  LoginView.swift
//  Instagram_Clone
//
//  Created by Jackson on 12/02/22.
//

import Foundation
import UIKit

protocol LoginViewType : UIViewController {
    
}

class LoginView: UIViewController, LoginViewType {
    
    override func viewDidLoad() {
        view.backgroundColor = .white
        view.addSubview(logo)
        view.addSubview(userInput)
        
        logo.translatesAutoresizingMaskIntoConstraints = false
        userInput.translatesAutoresizingMaskIntoConstraints = false
        
        let LogoConstraints = [
            logo.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 60),
            logo.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            logo.widthAnchor.constraint(equalToConstant: 222),
            logo.heightAnchor.constraint(equalToConstant: 88)
        ]
        
        let UserInputConstraints = [
            userInput.topAnchor.constraint(equalTo: logo.bottomAnchor, constant: 0),
            userInput.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            userInput.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            userInput.heightAnchor.constraint(equalToConstant: 40)
        ]
        
        NSLayoutConstraint.activate(LogoConstraints)
        NSLayoutConstraint.activate(UserInputConstraints)
    }
    
    private lazy var logo: UIImageView = {
        let view = UIImageView(image: UIImage(named: "logo"))
        
        return view
    }()
    
    private lazy var userInput: UITextField = {
        let view = UITextField()
        
        view.placeholder = "Telefone, nome de usuária ou email"
        view.textAlignment = .center
        
        return view
    }()
}
