//
//  request.swift
//  HushFrontend
//
//  Created by Melih Dural on 12.06.2024.
//

import Foundation

class Auth{
    var baseURL = "http://localhost:3000"
    
    func login(email: String, password: String, completion: @escaping (Bool, String) -> Void){
        var message = ""
        
        if email == ""{
            message = "Email is empty"
        }
        
        if password == "" {
            message = message + "Password is empty"
        }
        
        if message != "" {
            return completion(false, message)
        }
        
        return completion(true, "Login success")
    }
    
    func logout(completion: @escaping (Bool, String) -> Void){
        return completion(true, "Logout success")
    }
}
