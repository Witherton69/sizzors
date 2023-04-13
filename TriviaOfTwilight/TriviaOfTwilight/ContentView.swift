//
//  ContentView.swift
//  TriviaOfTwilight
//
//  Created by Witherton on 3/22/23.
//

import SwiftUI

struct ContentView: View {
    
    // STATE VARIBLES
    @State var message = " We had like another full week to work on these do to there being like two people in every class so I got funky with this one ok. Click the START GAME button to begin <3 "

    // State variables used to display options/answers for user to select
    @State var optionOne = ""
    @State var optionTwo = ""
    @State var optionThree = ""
    @State var optionFour = ""
    
    @State var buttonText = "START GAME"
    
    // State value used to determine which question to display
    @State var qIndex = -1
    
    // State value used to keep track of user's score
    @State var score = 0
    
    @State var backgroundColor = Color.red
        
    let questions = [
        " In Call of Duty Zombies, Who was the German Scientist? ",
        " Who was the Russian Soldier? ",
        " What was the first group to form?",
        " Who was Hudson supposed to look after?",
        " What war did Zombies first appear in? ",
        " What did Edward Cullen first think of Bella Swan? ",
        " What animals did Edward compare him and Bella too? ",
        " How old was Bella when she married Edward? ",
        " Who was Bella also in love with thoughout the series? ",
        " What is Bella's father's name? ",
        " Where did the bite of 1987 take place? ",
        " Who was the original Two? ",
        " Who is the purple guy? ",
        " Who was the first child to die at the purple guys hands? ",
        " Who is my favorite animitronic?  ",
        " Who was the four main charactors of Marble Hornets? ",
        " Who brought their dog? ",
        " WHo did Alex kill? ",
        " What was the creater that was tourmenting the four mcs? ",
        " What was Tim's last words on the series? ",
        " What was John Price's ranking? ",
        " Who wore a skull mask? ",
        " What is Johhny McTavish's call sign? ",
        " Who did Price meet in the first mission of the MW1 game? ",
        " Who is the commander of the CIA? "
    ]
   
    let answers = [
        [
            ["Edward Richtofen", "correct"],
            ["Nikolai Belinsky", "wrong"],
            ["Takeo Masaki", "wrong"],
            ["Thomas 'Tank' Dempsy", "wrong"]
        ],
        [
            ["Edward Richtofen", "wrong"],
            ["Nikolai Belinsky", "correct"],
            ["Takeo Masaki", "wrong"],
            ["Thomas 'Tank' Dempsy", "wrong"]
        ],
        [
            ["Primis", "wrong"],
            ["Victumus", "wrong"],
            ["Ultimis", "wrong"],
            ["Group 935", "correct"]
        ],
        [
            ["Gagory Weaver", "wrong"],
            ["Alex Mason", "correct"],
            ["John 'F' Kennedy", "wrong"],
            ["Sam Maxis", "wrong"]
        ],
        [
            ["Cold War", "wrong"],
            ["Vietnam War", "correct"],
            ["WW2", "wrong"],
            ["WW1", "wrong"]
        ],
        [
            ["She would drive him to murder the class", "correct"],
            ["She smelled bad", "wrong"],
            ["She was pretty", "wrong"],
            ["He was unintrested in her", "wrong"]
        ],
        [
            ["A snake and a bird", "wrong"],
            ["A fox and a raven", "wrong"],
            ["A bug and a flower", "wrong"],
            ["A lion and a lamb", "correct"]
        ],
        [
            ["17", "wrong"],
            ["18", "correct"],
            ["16", "wrong"],
            ["20", "wrong"]
        ],
        [
            ["Mike", "wrong"],
            ["Jessica", "wrong"],
            ["Jacob", "correct"],
            ["Alice", "wrong"]
        ],
        [
            ["Carlisle", "wrong"],
            ["Charlie", "correct"],
            ["Frank", "wrong"],
            ["Jason", "wrong"]
        ],
        [
            ["Feddy's pizzaria Jr's", "correct"],
            ["Freddy's pizzaria", "wrong"],
            ["Freddy's Pizza Plex", "wrong"],
            ["Freddy's Family Dinner", "correct"]
        ],
        [
            ["Freddy and Foxy", "wrong"],
            ["Chica and Bonnie", "wrong"],
            ["Golden Bonnie and Golden Freddy", "correct"],
            ["Toy Bonnie and Toy Freddy", "wrong"]
        ],
        [
            ["William Afton", "correct"],
            ["Henry Emily", "wrong"],
            ["Michael Afton", "wrong"],
            ["Mike Fizgerold", "wrong"]
        ],
        [
            ["Charile", "wrong"],
            ["Suesie", "correct"],
            ["Gabriel", "wrong"],
            ["Sam", "wrong"]
        ],
        [
            ["Funtime Freddy", "wrong"],
            ["Funtime Foxy", "wrong"],
            ["The Mangle", "correct"],
            ["LOLBit", "wrong"]
        ],
        [
            ["Tim, Brian, Jessica, Jay", "wrong"],
            ["Alex, Seth, the dog, Tim", "wrong"],
            ["Brian, Seth, Jay, camcorder", "wrong"],
            ["Tim, Alex, Jay, Brian", "correct"]
        ],
        [
            ["Seth", "correct"],
            ["Alex", "wrong"],
            ["Jessica", "wrong"],
            ["Saraha", "wrong"]
        ],
        [
            ["Tim", "wrong"],
            ["Jay", "correct"],
            ["Brian", "wrong"],
            ["Jessica", "wrong"]
        ],
        [
            ["The Operator", "correct"],
            ["Slenderman", "wrong"],
            ["The Monster", "wrong"],
            ["The man with the blank face", "wrong"]
        ],
        [
            ["I was doing fine! I was getting better!", "wrong"],
            ["Well I'm not dead yet so there's that.", "wrong"],
            ["If you don't do the right thing and burn to death, come and find me.", "wrong"],
            ["Everything is fine. I think about nothing, because there is nothing on my mind. ", "correct"]
        ],
        [
            ["Lutenit", "wrong"],
            ["Sergeant", "wrong"],
            ["Rookie", "wrong"],
            ["Captian", "wrong"]
        ],
        [
            ["Ghost", "wrong"],
            ["McTavish", "wrong"],
            ["Gaz", "wrong"],
            ["Koenig", "correct"]
        ],
        [
            ["Gaz", "wrong"],
            ["Soap", "correct"],
            ["Ghost", "wrong"],
            ["Rudy", "wrong"]
        ],
        [
            ["Soap", "wrong"],
            ["Gaz", "correct"],
            ["Ghost", "wrong"],
            ["MSF", "wrong"]
        ],
        [
            ["Phillip Graves", "wrong"],
            ["Simon Reily", "wrong"],
            ["John Price", "wrong"],
            ["Kate Laswell", "correct"]
        ]

    ]
    
    func hideOptions(){
        optionOne = ""
        optionTwo = ""
        optionThree = ""
        optionFour = ""
    }

    func nextQuestion(){
        if (qIndex < questions.count - 1){
            qIndex += 1
            message = questions[qIndex]
            optionOne = answers[qIndex][0][0]
            optionTwo = answers[qIndex][1][0]
            optionThree = answers[qIndex][2][0]
            optionFour = answers[qIndex][3][0]
            buttonText = "NEXT QUESTION"
        } else {
            // Displays final score to user
            message = "Game Over. You got " + String(score) + " correct."
            buttonText = "GAME OVER"
            hideOptions()
        }
        
        
    }
    
    // Function used to check if user's guess is correct or not. The "a" parameter is used to determine which option was selected.
    // Also, the function adds a point to the user's score for each correct answer
    func checkAnswer(a: Int){
        if (answers[qIndex][a][1] == "correct"){
            message = "CORRECT!!! :D"
            score += 1
        } else {
            message = "Sorry wrong answer :("
        }
        
        hideOptions()
    }
    
    var body: some View {
        ZStack{

            backgroundColor.ignoresSafeArea()

            VStack {
                Spacer()
                
                Text("Fandom Trivia")
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
                            .frame(width: 175.0)
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
                            .frame(width: 175.0)
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
                            .frame(width: 175.0)
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
                            .frame(width: 175.0)
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
