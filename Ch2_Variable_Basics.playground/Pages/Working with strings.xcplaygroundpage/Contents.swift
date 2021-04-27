/*:
 # Working with Strings
 ---
 
 ## Topic Essentials
 There are several `String` methods that you'll be using on a regular basis, which include `contains`, `append`, `insert`, `remove`, and `split`. Refer to the documentation to see everything the `String` class offers.
 
 ### Objectives
 + Retrieve state information about a string using `count` and `isEmpty`
 + Use each of the mentioned class methods to alter the starting string
 
  [Previous Topic](@previous)                                                 [Next Topic](@next)
 
 */
// Test variable
var dialouge = "the Innerkeeper's Heaven"

// String data
dialouge.count
dialouge.isEmpty
dialouge.contains("s")

// Append and Insert
dialouge.append(contentsOf: ", weary travelers!")

// Remove and Split
dialouge.removeLast()
dialouge.removeFirst()
//dialouge.removeAll()
print(dialouge)

dialouge.split(separator: ",")

