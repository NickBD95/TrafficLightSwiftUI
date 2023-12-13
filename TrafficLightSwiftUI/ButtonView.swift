//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikolai Grachev on 13.12.2023.
//

import SwiftUI

struct ButtonView: View {
    
     let buttonText: String
     let action: () -> Void
    
    var body: some View {
        Button(action: action ){
            Text(buttonText)
                .font(.system(size: 30))
                .tint(.white)
                
        }
        .frame(width: 130, height: 50)
        .background(Color.blue)
        .clipShape(ButtonBorderShape.capsule)
    }
}

#Preview {
    ButtonView(buttonText: "button", action: {})
}
