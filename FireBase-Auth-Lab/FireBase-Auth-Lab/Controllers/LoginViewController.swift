//
//  ViewController.swift
//  FireBase-Auth-Lab
//
//  Created by Juan Ceballos on 3/3/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import UIKit

enum AccountState {
    case newUser
    case existingUser
}

class LoginViewController: UIViewController {
    
    private let loginView = LoginView()
    
    private var accountState: AccountState = .newUser
    
    override func loadView()  {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        
        loginView.toggleUserStateButton.addTarget(self, action: #selector(toggleUserStateButtonPressed), for: .touchUpInside)
        loginView.signinButton.addTarget(self, action: #selector(signinButtonPressed), for: .touchUpInside)
    }
    
    @objc private func signinButtonPressed()    {
        guard let email = loginView.emailTextField.text, !email.isEmpty,
            let password = loginView.passwordTextField.text, !password.isEmpty
            else    {
                print("missing fields")
                return
        }
        
    }
    
    private func continueLoginFlow(email: String, password: String)    {
        
    }
    
    @objc private func toggleUserStateButtonPressed()   {
        accountState = accountState == .existingUser ? .newUser : .existingUser
        
        if accountState == .existingUser {
            loginView.signinButton.setTitle("Sign Up", for: .normal)
            loginView.toggleUserStateButton.setTitle("Already User? Click Here", for: .normal)
        }
        else if accountState == .newUser    {
            loginView.signinButton.setTitle("Login", for: .normal)
            loginView.toggleUserStateButton.setTitle("New User? Click Here", for: .normal)
        }
    }
    
}

