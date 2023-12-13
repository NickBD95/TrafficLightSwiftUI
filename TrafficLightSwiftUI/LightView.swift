//
//  LightView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikolai Grachev on 12.12.2023.
//

import SwiftUI

struct LightView: View {
    
    let color: Color
    let opacity: CGFloat
    
    var body: some View {
        
        ZStack {
            Circle()
                .foregroundStyle(color)
                .frame(width: 130)
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
    LightView(color: .red, opacity: 0.2)
}
