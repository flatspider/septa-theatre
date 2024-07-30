//
//  ContentView.swift
//  TheatreCriticv0
//
//  Created by Conor McManamon on 7/29/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Int? = nil
    
    var body: some View {
        NavigationView {
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    // Add review button
                    NavigationLink(destination: AddReviewView(), tag: 1, selection: $selection){
                        Button(action: {
                            self.selection = 1
                        }) {
                            Text("+")
                            .font(.largeTitle)
                            .foregroundColor(.white)
                            .frame(width: 600, height: 60)
                            .background(Circle().fill(Color.blue))
                        
                        }
                    }
                }
            }
        } //Navigation view
        
        
    } // some View
} //Overall ContentView: View



struct AddReviewView: View {
    @State private var theaterLocation: String = ""
    @State private var playName: String = ""
    @State private var numberOfStars: Int = 3
    @State private var writtenReview: String = ""

    var body: some View {
        VStack {
            Form {
                Section(header: Text("Review Details")) {
                    TextField("Location of Theater", text: $theaterLocation)
                    TextField("Name of the Play", text: $playName)
                    Stepper(value: $numberOfStars, in: 1...5) {
                        Text("Number of Stars: \(numberOfStars)")
                    }
                    TextEditor(text: $writtenReview)
                        .frame(height: 200)
                        .border(Color.gray, width: 1)
                }
            }
            .navigationBarTitle("Add Review", displayMode: .inline)
        }
    }
}

#Preview {
    ContentView()
}
