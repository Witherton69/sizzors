//
//  ContentView.swift
//  StatesEx
//
//  Created by Witherton on 2/15/23.
//
import SwiftUI

struct ContentView: View {
    
    // 1a
    @State var numOne = 0
    
    // 2a
    @State var numTwo = 2
    
    var body: some View {
        VStack {
            Spacer()

            HStack {
                Text("ONE")
                // 1b
                Text(String(numOne))
                // 1c & 1d
                Button("ADD ONE", action: {
                    numOne = numOne + 1
                })
            }
            
            Spacer()
            
            HStack {
                Text("TWO")
                // 2b
                Text(String(numTwo))
                // 2c & 2d
                Button("SQUARE", action: {
                    numTwo = numTwo * numTwo
                })
            }
            
            Spacer()
            
            HStack {
                Text("BONUS")

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
