//
//  ContentView.swift
//  TrafficLightSwiftUI
//
//  Created by Nikolai Grachev on 12.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var redLightOpasity = 0.4
    @State var yellowLightOpasity = 0.4
    @State var greenLighOpasity = 0.4
    
    @State var buttonText = "START"
    
    var body: some View {
        
        ZStack{
            Color.purple
                .ignoresSafeArea()
            
            VStack {
                VStack {
                    LightView(color: .red, with: 130, opacity: redLightOpasity)
                    Spacer()
                    LightView(color: .yellow, with: 130, opacity: yellowLightOpasity)
                    Spacer()
                    LightView(color: .green, with: 130, opacity: greenLighOpasity)
                    Spacer()
                }
                .padding()
                
                Button(action: changeColor){
                    Text(buttonText)
                        .font(.largeTitle)
                        .tint(.white)
     
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 5)
                .background(Color.blue)
                .clipShape(ButtonBorderShape.capsule)
            }
            .padding()
        }
    }
}

extension ContentView {
    
    private func changeColor() {
        buttonText = "NEXT"
        
        if redLightOpasity != 1.0 && yellowLightOpasity != 1.0 {
            redLightOpasity = 1.0
            greenLighOpasity = 0.4
        } else if redLightOpasity == 1.0 {
            redLightOpasity = 0.4
            yellowLightOpasity = 1.0
        } else {
            yellowLightOpasity = 0.4
            greenLighOpasity = 1.0
        }
    }
}

#Preview {
    ContentView()
}
