//
//  ProfileView.swift
//  FireBase-Auth-Lab
//
//  Created by Juan Ceballos on 3/6/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import UIKit
import SnapKit

class ProfileView: UIView {
        
    private lazy var emailLabel: UILabel =  {
        let label = UILabel()
        return label
    }()
    
    private lazy var phoneNumberLabel: UILabel =    {
        let label = UILabel()
        return label
    }()
    
    private lazy var userNameLabel: UILabel =   {
        let label = UILabel()
        return label
    }()
    
    private lazy var profileImageImageView: UIImageView =   {
        let imageView = UIImageView()
        return imageView
    }()
    
    
    
    override init(frame: CGRect)    {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit()   {
        
    }
    
    
    
}
