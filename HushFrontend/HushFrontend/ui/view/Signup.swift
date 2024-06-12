//
//  Signup.swift
//  HushFrontend
//
//  Created by Melih Dural on 12.06.2024.
//

import SwiftUI

struct Signup: View {
    var body: some View {
        BlueBackgroundView{
            Text("Signup")
                .font(.largeTitle)
                .bold()
                .padding()
                .cornerRadius(10)
                .padding()
                .foregroundColor(.white)
        }
        
    }
}

#Preview {
    Signup()
}
