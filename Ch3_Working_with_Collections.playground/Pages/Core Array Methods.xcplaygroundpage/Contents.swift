/*:
 # Core Array Methods
 ---
 
 ## Topic Essentials
 Now that we know how to create and access arrays, we need to learn how to dynamically modify them. Like `Strings`, `Arrays` come with several handy methods built right in for just that purpose.
 
 ### Objectives
 + Create an array called **characterClasses** and assign it initial values
 + Use `append` and += operator to add items
 + Use the `insert` and `remove` methods to change the array further
 + Explore the `reverse`, `contains`, and`sort` methods
 + Create a jagged array called **skillTree** that stores arrays as its values
 + Use chained **subscript syntax** to access a value in **skillTree**
 
  [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */
// Changing & appending items
var characterClass = ["Luke Skywalker", "Master Yoda", "Princess Lea"]
characterClass.append("CP40")
characterClass += ["Hunter", "BB8"]

//Inserting and removing items
characterClass.insert("Mystiries Beast", at: 2)
characterClass.remove(at: 1)

// Ordering and querying values
characterClass.reverse()
var reverseClasses = characterClass.reversed()

characterClass.sort()
var sortedClasses = characterClass.sorted()


characterClass.contains("CP40")

print(characterClass)

// 2D arrays and subscripts
var skillTree: [[String]] = [
    ["Attack", "Barrage", "Heavy Hitter"],
    ["Guard", "Evasion", "Run"]
]

var attackSkillTree = skillTree[0][2]
skillTree[1][2]
