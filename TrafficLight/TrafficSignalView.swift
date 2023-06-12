//
//  TrafficSignalView.swift
//  TrafficLight
//
//  Created by Iaroslav Beldin on 08.06.2023.
//

import SwiftUI

struct TrafficSignalView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct TrafficSignal_Previews: PreviewProvider {
    static var previews: some View {
        TrafficSignalView(color: .red, opacity: 1)
    }
}
