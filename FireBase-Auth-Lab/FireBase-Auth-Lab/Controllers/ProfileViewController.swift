//
//  ProfileViewController.swift
//  FireBase-Auth-Lab
//
//  Created by Juan Ceballos on 3/6/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    private let profileView = ProfileView()
    
    override func loadView()  {
        view = profileView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemOrange
    }

}
