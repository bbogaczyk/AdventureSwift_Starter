/*:
 # Basic Swift Structs
 ---
 
 ## Topic Essentials
 Swift structures share a very similar syntax and functionality, but they are useful for creating different kinds of instances. While classes are well suited to complex data structures and are passed by reference, structs are passed by value and better suited to creating simple instances that don't need inheritance or reference capabilities.
 
 ### Objectives
 + Declare a basic struct called **Level**
 + Assign a few instance properties
 + Define two custom initializers
 + Add non-mutating and mutating functions
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Declaring a new struct
struct Level {
    let levelID: Int
    var levelObjectives: [String]
    
    
    //read only
    var levelDescription: String {
        return "Level ID: \(self.levelID)"
    }
    
    //customise the init
    init(id: Int, objectives: [String]) {
        self.levelID = id
        self.levelObjectives = objectives
    }
    
    //function who loop through the objectives
    func queryObjectives() {
        for objective in levelObjectives {
            print("\(objective)")
        }
    }
    
    //function to delete the items from objectives
    mutating func completeObjective(index: Int) {
        levelObjectives.remove(at: index)
    }
}

var objectivies = ["Find the lost cat", "Collect all gemstones", "Defeat the Big Boss"]
var level1 = Level(id: 1, objectives: objectivies)


// Value types again v. reference type
var defaultValue = level1 //assign the copy

//modified objects
level1.completeObjective(index: 0)
level1.queryObjectives()

defaultValue.queryObjectives()

