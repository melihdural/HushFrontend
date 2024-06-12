//
//  HomePage.swift
//  HushFrontend
//
//  Created by Melih Dural on 12.06.2024.
//

import SwiftUI

struct HomePage: View {
    @ObservedObject var viewModel = HomePageViewModel()
    
    var body: some View {
        VStack {
            Text("Hello, World!")
        }
    }
}

#Preview {
    HomePage()
}
