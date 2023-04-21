//
//  ContentView.swift
//  th8ing
//
//  Created by WITHERTON on 3/13/23.
//

import SwiftUI

struct ContentView: View {
    
    // STATE VARIBLES
    @State var message = "Click the START GAME button to begin"
    
    // State variables used to display options/answers for user to select
    @State var optionOne = ""
    @State var optionTwo = ""
    @State var optionThree = ""
    @State var optionFour = ""
    
    @State var buttonText = "START GAME"
    
    let questions = [
        "What group sang the song 'Stairway to Heaven'?"
    ]
   
    let answers = [
        ["Led Zepplin", "correct"],
        ["Pink Floyd", "wrong"],
        ["Van Halen", "wrong"],
        ["Queen", "wrong"]
    ]

    func nextQuestion(){
        message = questions[0]
        optionOne = answers[0][0]
        optionTwo = answers[1][0]
        optionThree = answers[2][0]
        optionFour = answers[3][0]
        buttonText = "NEXT QUESTION"
    }
    
    // Function used to check if user's guess is correct or not. The "a" parameter is used to determine which option was selected.
    //
    func checkAnswer(a: Int){
        if (answers[a][1] == "correct"){
            message = "CORRECT!!!"
        } else {
            message = "Sorry wrong answer"
        }
    }
    
    var body: some View {
        ZStack{

            Color.red.ignoresSafeArea()

            VStack {
                Spacer()
                
                Text("THE CLASSIC ROCK TRIVIA GAME")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                // Using the "message" state variable to update the message displayed to the user
                Text(message)
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        checkAnswer(a: 0)
                    } label: {
                        // Using the "optionOne" state variable to update the option displayed to the user
                        Text(optionOne)
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 150.0)
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                    
                    Button {
                        checkAnswer(a: 1)
                    } label: {
                        // Using the "optionTwo" state variable to update the option displayed to the user
                        Text(optionTwo)
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 150.0)
                            .fontWeight(.bold)
                    }

                    Spacer()

                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        checkAnswer(a: 2)
                    } label: {
                        // Using the "optionThree" state variable to update the option displayed to the user
                        Text(optionThree)
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 150.0)
                            .fontWeight(.bold)
                    }

                    Spacer()
                    
                    Button {
                        checkAnswer(a: 3)
                    } label: {
                        // Using the "optionFour" state variable to update the option displayed to the user
                        Text(optionFour)
                            .font(.title)
                            .foregroundColor(Color.white)
                            .frame(width: 150.0)
                            .fontWeight(.bold)
                    }

                    Spacer()

                }

                
                Spacer()
                
                Button {
                    nextQuestion()
                } label: {
                    // Using the "buttonText" state variable to update the text in the button displayed to the user
                    Text(buttonText)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
                        .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
