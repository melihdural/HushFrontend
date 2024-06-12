//
//  HomePage.swift
//  HushFrontend
//
//  Created by Melih Dural on 12.06.2024.
//

import SwiftUI

struct HomePage: View {
    @ObservedObject var viewModel = HomePageViewModel()
    @State private var scale: CGFloat = 1.7
    @State private var isIncreasing: Bool = false
    
    var body: some View {
        NavigationView {
            NavigationLink(destination: Login()){
                ZStack{
                    Color.blue.ignoresSafeArea();
                    VStack {
                        Text("Hello, Home Page!")
                            .font(.largeTitle)
                            .bold()
                            .padding()
                            .cornerRadius(10)
                            .padding()
                            .foregroundColor(.white)
                        Text("Go to Login")
                            .foregroundColor(.white)
                            .padding()
                    }
                }
            }
        }
    }
}

#Preview {
    HomePage()
}
