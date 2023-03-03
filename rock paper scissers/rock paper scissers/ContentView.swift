//
//  ContentView.swift
//  RockPaperScissorsGame
//
//  Created by Witherton on 2/22/23.
//
import SwiftUI

struct ContentView: View {
    
    // State variable used to display a message after each round/click
    @State var message = "Select Rock, Paper, or Scissors to start the game"
    
    // State variables used to determine/display an option (AKA Rock, Paper, Scissors) for both players (AKA Player & CPU)
    @State var playerIndex = 0
    @State var cpuIndex = 0
    
    // State variables used to track and display each player's score
    @State var playerScore = 0
    @State var cpuScore = 0
    
    // Array that holds the emojis that the Player has selected for each round which will be displayed. Also, this Array will be used a select a random emoji for the CPU to display for each round.
    let emojis = [
        "🪨",
        "📄",
        "✂️"
    ]
    
    // Array that holds the names of the three different options (NOTE: This is used for comparing values to determine a winner)
    let options = [
        "rock",
        "paper",
        "scissors"
    ]
    
    // Function used to start a new game (NOTE: "m: String" is a parameter that allows for a custom String value to be used to update the value for the "message" state variable)
    func restartGame(m: String){
        playerScore = 0
        cpuScore = 0
        message = m
    }
    
    // Function that accepts an Int value for the "index" parameter which represents the option selected by the User/Player (NOTE: "index: Int" is the parameter that allows for a custom Int value to be used to update the value for the "playerIndex" state variable)
    func addPoint(index: Int){
        // Sets the index for the Player using what is passed in for the "index" parameter and updates the value for the "playerIndex" state variable which causes the Emoji/Option for the Player to be updated on the App screen
        playerIndex = index
        
        // Creates a random index for the CPU and updates the value for the "cpuIndex" state variable which causes the Emoji/Option for the CPU to be updated on the App screen
        cpuIndex = Int.random(in: 0...2)
        
        // Selects a String (AKA Option) from the options array
        let playerSelection = options[playerIndex]
        let cpuSelection = options[cpuIndex]
        
        // Checks if Player won the round (NOTE: Order of operations for Logical Operators is AND "&&" before OR "||")
        if (playerSelection == "rock" && cpuSelection == "scissors" || playerSelection == "paper" && cpuSelection == "rock" || playerSelection == "scissors" && cpuSelection == "paper"){
            
            // Updating the value of the "message" state variable to display to the user
            message = "You won"
            
            // Adds one to the Player's score
            playerScore = playerScore + 1
            
            // BONUS
            // Checks if "Player" has won the game
            if (playerScore == 3){
                restartGame(m: "YOU WON THE GAME!!! Select Rock, Paper, or Scissors to start a new game")
            }
            
            // Checks if CPU won the round
        } else if (playerSelection == "rock" && cpuSelection == "paper" || playerSelection == "paper" && cpuSelection == "scissors" || playerSelection == "scissors" && cpuSelection == "rock"){
            
            // Updating the value of the "message" state variable to display to the user
            message = "CPU won"
            
            // Adds one to the CPU's score
            cpuScore = cpuScore + 1
            
            // BONUS
            // Checks if "CPU" has won the game
            if (cpuScore == 3){
                restartGame(m: "Sorry game over. Select Rock, Paper, or Scissors to start a new game")
            }

            // If neither of the above if or if else are true, then the only other possibly is a tie
        } else {
            // Updating the value of the "message" state variable to display to the user
            message = "Select Again"
        }
        
    }
    
    var body: some View {
        ZStack{
            // Using "ignoresSafeArea" allows for the background color to take up the entire screen
            Color.blue.ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("ROCK PAPER SCISSORS GAME")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                // Referencing the "message" state variable to display a String in the Text Element/View
                Text(message)
                    .font(.title)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        // 0 is the argument passed in for the "index" parameter using the addPoint function
                        addPoint(index: 0)
                    } label: {
                        
                        // Using .system(size: Int) allows for a custom size to be set for an element/view
                        Text("🪨")
                            .font(.system(size: 75))
                    }
                    
                    Spacer()
                    
                    Button {
                        // 1 is the argument passed in for the "index" parameter using the addPoint function
                        addPoint(index: 1)
                    } label: {
                        Text("📄")
                            .font(.system(size: 75))
                    }
                    
                    Spacer()

                    Button {
                        // 2 is the argument passed in for the "index" parameter using the addPoint function
                        addPoint(index: 2)
                    } label: {
                        Text("✂️")
                            .font(.system(size: 75))
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    // VStack that contains Player option and current score
                    VStack{
                        // Displays an emoji from the "emojis" Array for the Player's selected option
                        Text(emojis[playerIndex])
                            .font(.system(size: 60))
                            .padding(.bottom, 10.0)

                        Text("Player")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        
                        // Displays the Player's current score
                        Text(String(playerScore))
                            .font(.title)
                            .foregroundColor(Color.white)

                    }
                    
                    Spacer()
                    
                    // VStack that contains CPU option and current score
                    VStack{
                        // Displays an emoji from the "emojis" Array for the CPU's selected option
                        Text(emojis[cpuIndex])
                            .font(.system(size: 60))
                            .padding(.bottom, 10.0)

                        Text("CPU")
                            .font(.title)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)

                        // Displays the CPU's current score
                        Text(String(cpuScore))
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    
                    Spacer()
                }
                
                Spacer()
                
                // When the button is clicked the gamer is reset by setting State variables back to their starting values
                Button {
                    // NON-BONUS OPTION
                    /*
                     message = "Select Rock, Paper, or Scissors to start the game"
                     playerIndex = 0
                     cpuIndex = 0
                     playerScore = 0
                     cpuScore = 0
                     */
                    
                    // The "Select Rock..." String value is the argument passed in for the "m" parameter using the restartGame function
                    restartGame(m: "Select Rock, Paper, or Scissors to start the game")
                    
                } label: {
                    Text("RESTART GAME")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding(/*@START_MENU_TOKEN@*/.all, 10.0/*@END_MENU_TOKEN@*/)
                        .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
                    // Corner Radius determines how rounded the corners of an element/view are
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
