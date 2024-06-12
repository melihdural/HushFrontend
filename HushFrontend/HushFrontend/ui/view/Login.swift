//
//  Login.swift
//  HushFrontend
//
//  Created by Melih Dural on 12.06.2024.
//

import SwiftUI

struct Login: View {
    var viewModel = LoginViewModel()
    @State private var email = ""
    @State private var wrongEmail = 0.0
    @State private var password = ""
    @State private var wrongPassword = 0.0
    @State private var isActive = false
    
    
    var body: some View {
        AnimatedCircleView{
            VStack {
                Text("Login")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                TextField("Email", text: $email)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongEmail))
                
                SecureField("Password", text: $password)
                    .padding()
                    .frame(width: 300, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(10)
                    .border(.red, width: CGFloat(wrongPassword))
                
                VStack{
                    Button("LOGIN") {
                        wrongEmail = 0.0
                        wrongPassword = 0.0
                        viewModel.login(email: email, password: password) { (success, message) in
                            print(success)
                            if success {
                                isActive = true
                            } else {
                                if message.contains("Email") {
                                    print(message)
                                    wrongEmail = 1.0
                                }
                                if message.contains("Password") {
                                    print(message)
                                    wrongPassword = 1.0
                                }
                                isActive = false
                            }
                        }
                    }
                    .foregroundColor(.white)
                    .frame(width: 300, height: 50)
                    .background(Color.blue)
                    .cornerRadius(10)
                    
                    NavigationLink(destination: Signup()) {
                        Text("SIGN UP")
                            .foregroundColor(.white)
                            .frame(width: 300, height: 50)
                            .background(Color.blue)
                            .cornerRadius(10)
                    }
                    
                    NavigationLink(destination: Main(), isActive: $isActive) {
                        EmptyView()
                    }
                }
                .padding()
            }
        }
    }
}

#Preview {
    Login()
}
