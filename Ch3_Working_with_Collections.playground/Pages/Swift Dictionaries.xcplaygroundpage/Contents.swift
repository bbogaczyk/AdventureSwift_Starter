/*:
 # Swift Dictionaries
 ---
 
 ## Topic Essentials
 Like arrays, dictionaries are collection types, but instead of holding single values accessed by indexes, they hold **key-value** pairs. All keys need to be of the same type, and the same goes for values. It's important to know that dictionary items are **unordered**, and their values are accessed with their associated keys.
 
 ### Objectives
 + Understand basic dictionary syntax
 + Create a dictionary called **blacksmithShop** and fill it with a few items
 + Access and udpate key-value pairs using subscript
 + Access all the keys and values of **blacksmithShopItems**
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Creating dictionaries
var blackSmithShop: [String: Int] = ["Bottle":10, "Shield": 15, "Ocarina": 1000]
print(blackSmithShop)


// Accessing and modifying values

/*accesing the index and return the value*/
var shieldPrice = blackSmithShop["Shield"]

/*modyfing the price*/
blackSmithShop["Bottle"] = 11

/*add new items to the dictionary*/
blackSmithShop["Towel"] = 1

print(blackSmithShop)

// All keys and values

let allKeys = [String](blackSmithShop.keys)
let allKeys1 = blackSmithShop

print(allKeys)
let allValues = [Int](blackSmithShop.values)
print(allValues)

