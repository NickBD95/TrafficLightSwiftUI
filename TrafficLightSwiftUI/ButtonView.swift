//
//  ButtonView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikolai Grachev on 13.12.2023.
//

import SwiftUI

struct ButtonView: View {
    
     let buttonText: String
     let buttonFunc: () -> Void
    
    var body: some View {
        Button(action: buttonFunc ){
            Text(buttonText)
                .font(.largeTitle)
                .tint(.white)
        }
        .padding(.horizontal, 20)
        .padding(.vertical, 5)
        .background(Color.blue)
        .clipShape(ButtonBorderShape.capsule)
    }
}

func buttonFunc() {
    
}

#Preview {
    ButtonView(buttonText: "button", buttonFunc: buttonFunc)
}
