//
//  LoginViewModel.swift
//  HushFrontend
//
//  Created by Melih Dural on 12.06.2024.
//

import Foundation
import SwiftUI

class LoginViewModel : ObservableObject{
    private var crud = CRUD();
    
    func login (email: String, password: String, completion: @escaping (Bool, String) -> Void){
        crud.auth.login(email: email, password: password) {(success, message) in
            completion(success, message)
        }
    }
    
}
