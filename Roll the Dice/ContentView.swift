//
//  ContentView.swift
//  Roll the Dice
//
//  Created by john francis on 10/19/26.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    @State private var rotation = 0.0
    var body: some View {
        VStack {

            Text("Dice Roll")
                .font(.title)
            Image("pips \(randomValue)")
                .resizable ()
                .frame (width: 200, height: 200)
                . rotationEffect(.degrees(rotation))
                .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0))
                .padding () .onTapGesture {
                    withAnimation {
                        rotation += 360
                    }
                    randomValue = Int.random(in: 1...6)
                }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
