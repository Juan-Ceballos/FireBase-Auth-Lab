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
      
    private lazy var profileStackView: UIStackView =    {
        let stackView = UIStackView()
        
        stackView.axis = .vertical
        stackView.distribution = .fillEqually
        
        stackView.addArrangedSubview(userNameTextField)
        stackView.addArrangedSubview(emailTextField)
        stackView.addArrangedSubview(phoneNumberTextField)
        stackView.addArrangedSubview(updateProfileButton)
        
        return stackView
    }()
    
    public lazy var updateProfileButton: UIButton =    {
        let button = UIButton()
        button.setTitle("Update Profile", for: .normal)
        return button
    }()
    
    public lazy var emailTextField: UITextField =  {
        let textField = UITextField()
        textField.placeholder = "Email"
        return textField
    }()
    
    public lazy var phoneNumberTextField: UITextField =    {
        let textField = UITextField()
        textField.placeholder = "Phone Number"
        return textField
    }()
    
    public lazy var userNameTextField: UITextField =   {
        let textField = UITextField()
        textField.placeholder = "UserName"
        return textField
    }()
    
    public lazy var profileImageImageView: UIImageView =   {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "person")
        imageView.contentMode = .scaleAspectFit
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
        setupProfileImageViewConstraints()
        setupProfileStackViewConstraints()
    }
    
    private func setupProfileImageViewConstraints() {
        addSubview(profileImageImageView)
        
        profileImageImageView.snp.makeConstraints { (make) in
            make.left.equalTo(self)
            make.right.equalTo(self)
            make.height.equalTo(self).multipliedBy(0.2)
            make.top.equalTo(self.safeAreaLayoutGuide.snp.top)
        }
    }
    
    private func setupProfileStackViewConstraints() {
        addSubview(profileStackView)
        
        profileStackView.snp.makeConstraints { (make) in
            make.top.equalTo(profileImageImageView.snp.bottom).offset(22)
            make.left.equalTo(self)
            make.right.equalTo(self)
            make.height.equalTo(self).multipliedBy(0.2)
        }
    }
    
}
