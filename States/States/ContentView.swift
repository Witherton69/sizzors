//
//  ContentView.swift
//  States
//
//  Created by Witherton on 2/15/23.
//


import SwiftUI

struct ContentView: View {
    
    // STATE
    // State in Swift allows for values to be created that will cause what the user sees to be re-rendered (AKA Refreshed) when that value is changed
    // To create a State value/variable @State must be placed before the creation of the variable
    // NOTE: State variables should be created above the "var body: some View: line in a Swift file
    @State var numOne = 0
    @State var numTwo = 1

    var body: some View {
        VStack {
            
            Spacer()
            
            // Example 1
            Text("NUM ONE")
            // NOTE: Since the content that is specified for a text element/view must be a String the Int value must be converted to a String using "String()"
            Text(String(numOne))
            
            // When the button is clicked the line of code for the action is run adding 1 to the numOne state variable and re-rendering (AKA Refreshing) the App screen
            Button("ADD ONE", action: {
                numOne = numOne + 1
            })
            
            Spacer()
            
            // Example 2
            Text("NUM TWO")
            Text(String(numTwo))
            Button("DOUBLE") {
                numTwo = numTwo * 2
            }
            
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
