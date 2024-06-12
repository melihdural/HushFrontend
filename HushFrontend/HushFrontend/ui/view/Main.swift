//
//  Main.swift
//  HushFrontend
//
//  Created by Melih Dural on 12.06.2024.
//

import SwiftUI

struct Main: View {
    var body: some View {
        BlueBackgroundView{
            VStack{
                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .cornerRadius(10)
                    .padding()
                    .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    Main()
}
