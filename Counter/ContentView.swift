//
//  ContentView.swift
//  Counter
//
//  Created by Tech With Talal on 1/25/25.
//

import SwiftUI

struct ContentView: View {

    @State private var count = 0

    var body: some View {
        VStack {
            Text("\(count)")
                .font(.system(size: 128))
                .bold()

            HStack {
                Button("-") { count -= 1 }
                    .buttonStyle(CounterButtonStyle())
                Button("Reset") { count = 0 }
                    .buttonStyle(CounterButtonStyle())
                Button("+") { count += 1 }
                    .buttonStyle(CounterButtonStyle())
            }
        }
        .padding()
    }
}

struct CounterButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .font(.title)
            .padding()
            .background(Color.blue.opacity(configuration.isPressed ? 0.5 : 1))
            .foregroundStyle(.white)
            .cornerRadius(10)
    }
}


#Preview {
    ContentView()
}

