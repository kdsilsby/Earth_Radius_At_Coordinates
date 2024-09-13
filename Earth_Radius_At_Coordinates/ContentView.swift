//
//  ContentView.swift
//  Earth_Radius_At_Coordinates
//
//  Created by Kurt Silsby on 9/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var latitude: Double = 0.0
    
    var body: some View {
        VStack {
            HStack {
                Text("Latitude: ")
                Spacer()
                TextField(
                    "Latitude",
                    value: $latitude, 
                    format: .number)
                .border(.secondary)
                .frame(
                    minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,
                    idealWidth: 70,
                    maxWidth: .leastNormalMagnitude,
                    minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,
                    idealHeight: 12,
                    maxHeight: .leastNormalMagnitude,
                    alignment: .trailing)
                Text("° North or South")
            }
            HStack {
                Text("Earth Radius at " + String(format: "%.2f", latitude) + "° N/S:")
                Spacer()
                Text(
                    String(
                        format: "%.3f",
                        geocentricRadius(latitude: latitude)
                    )
                )
                Text("Km")
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
