//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikolai Grachev on 12.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redLightOpasity = 0.4
    @State private var yellowLightOpasity = 0.4
    @State private var greenLighOpasity = 0.4
    
    private let lightIsOn = 1.0
    private let lighIsOff = 0.4
    
    @State private var buttonText = "START"
    
    var body: some View {
        
        ZStack{
            Color.teal
                .ignoresSafeArea()
            
            VStack {
                VStack(spacing: 40) {
                    LightView(color: .red, opacity: redLightOpasity)
                    LightView(color: .yellow, opacity: yellowLightOpasity)
                    LightView(color: .green, opacity: greenLighOpasity)
                }
                Spacer()
                ButtonView(buttonText: buttonText, action: changeColor)
            }
            .padding(.top, 45)
            .padding(.bottom, 30)
        }
    }
}

extension ContentView {
    
    private func changeColor() {
        buttonText = "NEXT"
        
        if redLightOpasity != lightIsOn && yellowLightOpasity != lightIsOn {
            redLightOpasity = lightIsOn
            greenLighOpasity = lighIsOff
        } else if redLightOpasity == lightIsOn {
            redLightOpasity = lighIsOff
            yellowLightOpasity = lightIsOn
        } else {
            yellowLightOpasity = lighIsOff
            greenLighOpasity = lightIsOn
        }
    }
}

#Preview {
    ContentView()
}
