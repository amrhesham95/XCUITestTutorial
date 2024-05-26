//
//  ContentView.swift
//  UITestTutorial
//
//  Created by Amr Hesham on 26/05/2024.
//

import SwiftUI

struct ContentView: View {
    @State var welcomeLabel: String
    @State var cityInput: String
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Enter you City")
                .accessibilityIdentifier("enterCityText")
            
            TextField("", text: $cityInput)
                .accessibilityIdentifier("cityInputField")

            Button("Enroll") {
                welcomeLabel = "Thanks for Joining!"
            }
            .accessibilityLabel("clickMeButton")
            
            Text(welcomeLabel)
                .accessibilityIdentifier("welcomeText")
        }
        .padding()
    }
}

#Preview {
    ContentView(welcomeLabel: "Hello, world!", cityInput: "")
}
