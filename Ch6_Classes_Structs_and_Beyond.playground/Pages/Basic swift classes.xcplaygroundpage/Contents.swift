/*:
 # Basic Swift Classes
 ---
 
 ## Topic Essentials
 Even though swift has an entire library of built-in classes and structs for us to use in our applications, we’ll still need to know how to create our own. These data structures can have properties, methods, initializers, and in the case of classes can have their own subclasses.
 
 ### Objectives
 + Create a simple class called **Adventurer**
 + Declare instance properties with or without values
 + Define designated and convenience initializers
 + Understand reference type behavior
 
 [Next Topic](@next)
 
 */
// Declaring a new class
class Adventurer {
    var name: String
    let maxHealth: Int
    
    var specialMove: String?
    
    //create a initializers
    init(name: String, maxHP: Int) {
        //set the adventure properties
        self.name = name //Define designated initializers
        self.maxHealth = maxHP
    }
    
    //Define convenience initializers
    convenience init(name: String) {
        //passing the parameter into to designated init
        self.init(name: name, maxHP: 100)
    }
    
    //print out the properties
    func printStats () {
        print("Character: \(self.name), Max Health: \(self.maxHealth)")
    }
}

//declaare the instance of the class
var player1 = Adventurer (name: "Harrison", maxHP: 99) //designated
var player2 = Adventurer (name: "Steven")  //convenience

//play with reference - override the first player
var defaultPlayer = player1
defaultPlayer.name = "Bob the Noob"

player1.printStats()
player2.printStats()


