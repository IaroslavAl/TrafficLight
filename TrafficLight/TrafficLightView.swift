//
//  ContentView.swift
//  TrafficLightView
//
//  Created by Iaroslav Beldin on 08.06.2023.
//

import SwiftUI

enum CurrentLight {
    case off, red, yellow, green
}

struct TrafficLightView: View {
    @State private var buttonTitle = "START"
    @State private var currentLight = CurrentLight.off
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                TrafficSignalView(
                    color: .red,
                    opacity: currentLight == .red ? 1 : 0.3
                )
                TrafficSignalView(
                    color: .yellow,
                    opacity: currentLight == .yellow ? 1 : 0.3
                )
                TrafficSignalView(
                    color: .green,
                    opacity: currentLight == .green ? 1 : 0.3
                )
                
                Spacer()
                
                StartButtonView(title: buttonTitle) {
                    if buttonTitle == "START" {
                        buttonTitle = "NEXT"
                    }
                    nextColor()
                }
            }
            .padding()
        }
    }
    
    private func nextColor() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        default:
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView()
    }
}
