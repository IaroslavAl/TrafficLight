//
//  ContentView.swift
//  TrafficLight
//
//  Created by Iaroslav Beldin on 08.06.2023.
//

import SwiftUI

struct TrafficLight: View {
    private var redSignal = TrafficSignal(color: .red)
    private var yellowSignal = TrafficSignal(color: .yellow)
    private var greenSignal = TrafficSignal(color: .green)
    
    @State private var currentSignal = Color.black
    
    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            
            VStack {
                redSignal.opacity(currentSignal == .red ? 1.0 : 0.3)
                yellowSignal.opacity(currentSignal == .yellow ? 1.0 : 0.3)
                    .padding()
                greenSignal.opacity(currentSignal == .green ? 1.0 : 0.3)
                
                Spacer()
                
                Button("NEXT") {
                    change()
                }
                .font(.largeTitle).foregroundColor(.white).bold()
                .frame(width: 200, height: 60)
                .background(.blue)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.white, lineWidth: 2))
            }
            .padding()
        }
    }
    
    private func change() {
        switch currentSignal {
        case .red:
            currentSignal = .yellow
        case .yellow:
            currentSignal = .green
        default:
            currentSignal = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLight()
    }
}
