//
//  TrafficSignal.swift
//  TrafficLight
//
//  Created by Iaroslav Beldin on 08.06.2023.
//

import SwiftUI

struct TrafficSignal: View {
    let color: Color
    var opacity = 0.3
    
    var body: some View {
        Circle()
            .frame(width: 100, height: 100)
            .foregroundColor(color)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct TrafficSignal_Previews: PreviewProvider {
    static var previews: some View {
        TrafficSignal(color: .red)
    }
}
