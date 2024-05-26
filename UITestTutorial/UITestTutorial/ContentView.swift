//
//  ContentView.swift
//  UITestTutorial
//
//  Created by Amr Hesham on 26/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State var textTitle: String
    
    var body: some View {
        VStack {
            Button("Click me") {
                textTitle = "Welcome Home!"
            }
            .accessibilityLabel("clickMeButton")
            
            Text(textTitle)
                .accessibilityIdentifier("welcomeText")
        }
        .padding()
    }
}

#Preview {
    ContentView(textTitle: "Hello, world!")
}
