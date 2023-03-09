// CLASSES
// Classes work as a blueprint/template for creating a grouping of properties/methods that are related

/*
 Syntax Example
 
 class ClassName {
    variableType propertyName: DataType
    variableType propertyName: DataType

 init(propertyName: DataType, propertyName: DataType){
        self.propertyName = value
        self.propertyName = value
    }
 
 func methodName(){
        CODE TO BE RUN GOES HERE
    }
 }
 */

class ChicagoMovie {
    let movie: String
    let character: String
    let actor: String
    let setInChicago: Bool

    init(movie: String, character: String, actor: String){
        self.movie = movie
        self.character = character
        self.actor = actor
        // Property value that is the same for each Class instance that is created
        self.setInChicago = true
    }
    
    func info(){
        print(self.movie + " is a Chicago based movie about " + self.character + " played by " + self.actor)
    }
}

// Example 1
let homeAlone = ChicagoMovie(movie: "Home Alone", character: "Kevin McCallister", actor: "Macaulay Culkin")

print(homeAlone.movie) // Home Alone
print(homeAlone.actor) // Macaulay Culkin
homeAlone.info() // Home Alone is a Chicago based movie about Kevin McCallister played by Macaulay Culkin
print(homeAlone.setInChicago) // true

// Example 2
let theBluesBrothers = ChicagoMovie(movie: "The Blues Brothers", character: "Jake and Elwood Blues", actor: "John Belushi & Dan Aykroyd")
print(theBluesBrothers.movie) // The Blues Brothers
print(theBluesBrothers.character) // Jake and Elwood Blues
theBluesBrothers.info() // The Blues Brothers is a Chicago based movie about Jake and Elwood Blues played by John Belushi & Dan Aykroyd


