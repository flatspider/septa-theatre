//
//  ContentView.swift
//  TheatreCriticv0
//
//  Created by Conor McManamon on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showInputBox = false
    @State private var inputText = ""
    
    var body: some View {
        VStack {
            
            if showInputBox {
                TextField("Enter review info here", text: $inputText)
            } else {
                
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundStyle(.tint)
                Text("Add Review")
                
            }
            
            
            // Add your button here
                    Button(action: {
                        // Define the action to perform when the button is pressed
                        showInputBox.toggle()
                        print("Button was tapped!")
                    }) {
                        // Define the button's appearance
                        Text("Press Me")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
