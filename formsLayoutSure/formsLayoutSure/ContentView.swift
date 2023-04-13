//
//  ContentView.swift
//  formsLayoutSure
//
//  Created by Katelyn Gosnell on 4/10/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//    Similer to Stack, elements can be grouped in a Form,.
//        NOTE: Form views, like Stacks, have a limit of elements that can be inside the Form (The limit is 10 elements)
        Form {
            
            // Group views can be used to group eleemnts (NOTE: Group views are not limited to Form, and can be used inside Stacks.)
            Group {
                Text("Graves")
                Text("May")
                Text("Be")
                Text("A")
                Text("War")
                Text("Criminal")
                
            }
            Group {
                Text("But")
                Text("He's")
                Text("Still")
                Text("My")
                Text("Babygirl")
                Text("<3")
            }
            
//            Sections simila to groups are also used to group elemnts. However,  Sections will create a space.
            Section(header: Text("Task Force 141")) {
                Text ("John Price")
                Text ("Johnny 'Soap' McTavish")
                Text ("Simon 'Ghost' Riley")
                Text ("Kyle 'Gaz' Garrick")
            }
            
            Section(header: Los Vouquerto) {
                Text ("Second Section")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
