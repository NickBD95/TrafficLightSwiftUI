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
                VStack {
                    LightView(color: .red, with: 130, opacity: redLightOpasity)
                        .padding(.bottom, 25)
                    LightView(color: .yellow, with: 130, opacity: yellowLightOpasity)
                        .padding(.bottom, 25)
                    LightView(color: .green, with: 130, opacity: greenLighOpasity)
                }
                .padding(.bottom, 120)
                
                ButtonView(buttonText: buttonText, buttonFunc: changeColor)
            }
            .padding()
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
