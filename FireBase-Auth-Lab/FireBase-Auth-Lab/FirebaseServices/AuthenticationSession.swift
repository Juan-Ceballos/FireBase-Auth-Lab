//
//  AuthenticationSession.swift
//  FireBase-Auth-Lab
//
//  Created by Juan Ceballos on 3/5/20.
//  Copyright © 2020 Juan Ceballos. All rights reserved.
//

import Foundation
import FirebaseAuth

class AuthenticationSession {
    
    // brand new user function gets called
    public func createNewUser(email: String, password: String, completion: @escaping (Result<AuthDataResult, Error>) -> ()) {
        Auth.auth().createUser(withEmail: email, password: password) { (authDataResult, error) in
            if let error = error    {
                completion(.failure(error))
            }
            else if let authDataResult = authDataResult   {
                completion(.success(authDataResult))
            }
        }
    }
    
    public func signinExistingUser(email: String, password: String, completion: @escaping (Result<AuthDataResult, Error>) -> ())  {
        
        Auth.auth().signIn(withEmail: email, password: password) { (authDataResult, error) in
            if let error = error    {
                completion(.failure(error))
            }
            else if let authDataResult = authDataResult {
                completion(.success(authDataResult))
            }
        }
        
    }
}
