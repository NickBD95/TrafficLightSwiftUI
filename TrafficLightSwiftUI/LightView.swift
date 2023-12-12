//
//  LightView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikolai Grachev on 12.12.2023.
//

import SwiftUI

struct LightView: View {
    
    let color: Color
    let with: CGFloat
    let opacity: CGFloat
    
    var body: some View {
        
        ZStack {
            Circle()
                .foregroundStyle(color)
                .frame(width: with)
                .opacity(opacity)
                .overlay(
                    Circle()
                        .stroke(Color.white, lineWidth: 4)
                )
                .shadow(radius: 10)
        }
    }
}

#Preview {
    LightView(color: .red, with: 200, opacity: 0.2)
}
