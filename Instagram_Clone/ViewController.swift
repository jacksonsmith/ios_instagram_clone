//
//  ViewController.swift
//  Instagram_Clone
//
//  Created by Jackson on 12/02/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        let login = LoginView()
        login.modalPresentationStyle = .fullScreen
        present(login, animated: false, completion: nil)
    }
}

