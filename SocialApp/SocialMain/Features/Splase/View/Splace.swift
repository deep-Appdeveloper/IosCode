//
//  Splace.swift
//  SocialApp
//
//  Created by deepak saini on 15/10/25.
//

import SwiftUI

struct Splace: View {
    
    var orbitDiameter: CGFloat = 160
        var orbitDuration: Double = 4.0        // seconds for one full orbit
        var iconName: String = "bubble.left.fill"
        var iconSize: CGFloat = 30
        var showOrbitPath: Bool = true
        var keepIconUpright: Bool = true      // if true, icon will not rotate on its own axis
        @State private var isAnimating = false
    
    var body: some View {
        ZStack{
            LinearGradient(colors: [.purple,.blue], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            VStack(spacing: 200){
                Text("Welcome To Social")
                    .font(.largeTitle.bold())
                    .foregroundStyle(.white)
            
            }
            
        }
    }
}

#Preview {
    Splace()
}
