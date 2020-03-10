//
//  ProfileViewController.swift
//  FireBase-Auth-Lab
//
//  Created by Juan Ceballos on 3/6/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import UIKit
import FirebaseAuth

class ProfileViewController: UIViewController {
    
    //textField.text
    
    private let profileView = ProfileView()
    
    override func loadView()  {
        view = profileView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
       updateUI()
        profileView.updateProfileButton.addTarget(self, action: #selector(updateProfileButtonPressed), for: .touchUpInside)
        
        // 50ish mins firebase 1 store
        //user.displayName
        //user.email
        //user.photoURL
        
        //user.delete { () in
        //
        //}
        
        
        //user.phoneNumber
        //user.uid
        //user.updateEmail(to: , completion: )
    }
    
    @objc private func updateProfileButtonPressed()    {
        guard let displayName = profileView.userNameTextField.text,
            let currentEmail = profileView.emailTextField.text,
            let phoneNumber = profileView.phoneNumberTextField.text,
            !displayName.isEmpty && !currentEmail.isEmpty && !phoneNumber.isEmpty
            else    {
                print("missing fields")
                return
        }
        
        let request = Auth.auth().currentUser?.createProfileChangeRequest()
        request?.displayName = displayName
        request?.commitChanges(completion: { (error) in
            if let error = error    {
                print("error userName")
            }
            else    {
                print("success userName")
            }
        })
        
        // re-authenticate user if logged in long time ago
        Auth.auth().currentUser?.updateEmail(to: currentEmail, completion: { (error) in
            if let error = error    {
                print("\(error)")
            }
            else    {
                print("success email")
            }
        })
        
        // phone number
        
        // need storage for user profile pic
        
        // delete also requires reautthentication like updateEmail()
    }
    
    private func updateUI() {
        guard let user = Auth.auth().currentUser
        else    {
            return
        }
        
        profileView.userNameTextField.text = user.displayName
        profileView.emailTextField.text = user.email
        
    }
    
    //updateProfileButtonPressed
    //user.createProfileChangeRequest()
    //request.displayName
    //request.commitChanges
}
