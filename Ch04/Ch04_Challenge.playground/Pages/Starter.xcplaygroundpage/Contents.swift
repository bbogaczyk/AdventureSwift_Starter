/*:
 # Chapter Challenge: Game Logic
 ---
 ### Tasks
 1. Create two optional string variable called **lefthandWeapon** and **righthandWeapon**. Assigning them initial values is at your discretion.
 2. Use optional binding to unwrap both optionals in a single statement and debug both outcomes.
 3. Create a dictionary called **playerExp** and assign it some key-value pairs of type string and integer.
 4. Use a `for-in` loop to iterate over **playerExp** and capture the keys and values.
 5. Add a `guard` statement inside the `for-in` loop to make sure each player is at least level 1 to proceed. Don't forget to include the `continue` keyword.
 6. Use a switch statement to define the following cases:
 6a. exp is equal to 32
 6b. exp is between 200 and 500
 6c. Use value binding to store exp and check that it is greater than 500 using the `where` keyword
 
 [Previous Topic](@previous)
 
 */
// 1
var lefthandWeapon: String? = "Fume Sword"
var righthandWeapon: String?

// 2
if let leftWeapon = lefthandWeapon, let rightWeapon = righthandWeapon {
    print("Hurray I have a \(leftWeapon) and \(rightWeapon) weapons just for me!")
} else {
    print("I am a looser !!!")
}

// 3
var playerExp: [String: Int] = ["Harrison": 233, "Steven": 489, "Bob Jane": 0]

// 4
for (player, exp) in playerExp {
    print("\(player): \(exp)")
    // 5
    guard exp > 0 else {
        print("\(player) you need some serious help...")
        continue
    }
    // 6
    switch exp {
    case 32:
        print("Looking good!")
    case 200...500:
        print("Getting better every day")
    case (let localExp) where localExp > 500:
        print("Time to level up!")
    default:
        print("Keep going")
    }
    
}




