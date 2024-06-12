//
//  AnimatedCircleView.swift
//  HushFrontend
//
//  Created by Melih Dural on 12.06.2024.
//

import SwiftUI

struct AnimatedCircleView<Content: View>: View {
    @State private var scale: CGFloat = 1.7
    @State private var isIncreasing: Bool = false
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        BlueBackgroundView{
            Circle()
                .scaleEffect(scale)
                .foregroundColor(.white.opacity(0.15))
                .onAppear {
                    DispatchQueue.main.async {
                        withAnimation(
                            Animation.linear(duration: 1.0)
                                .repeatForever(autoreverses: true)
                        ) {
                            isIncreasing.toggle()
                            scale = isIncreasing ? 1.35 : 1.7
                        }
                    }
                }
            Circle()
                .scale(1.35)
                .foregroundColor(.white);
            
            content
        }
    }
}

#Preview {
    AnimatedCircleView(){
        Text("Hello, World!").foregroundColor(.black);
    }
}
