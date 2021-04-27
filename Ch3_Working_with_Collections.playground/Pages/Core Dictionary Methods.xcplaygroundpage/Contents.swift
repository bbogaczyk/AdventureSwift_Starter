/*:
 # Core Dictionary Methods
 ---
 
 ## Topic Essentials
Dictionary elements can be easily updated and removed using subscript syntax or class methods.
 
 ### Objectives
 + Create a dictionary called **playerStats** and initialize it with key-value pairs
 + Update **playerStats** using different methods
 + Remove key-value pairs from **playerStats** using different methods
 + Create a 2 dimensional dictionary called **questDict** and populate it
 + Use chained subcripts to access a nested key-value pair
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Caching and overwriting items
var playStats: [String: Int] = ["HP": 100, "Attack": 35, "Gold": 29]

/*update the value*/
var oldValue = playStats.updateValue(30, forKey: "Attack")

/*overwrite the items*/
//playStats = ["Evaasion": 12, "MP": 55]


// Caching and removing items
/*remove the gold*/
//playStats["Gold"] = nil

//print(playStats)

/*remove the values*/
var removeValue = playStats.removeValue(forKey: "Gold")

print(playStats)

// Nested dictionaries
var questBoard = [
    "Fetch Gemstones": [
        "Objective": "Retrive 5 gemtsones",
        "Secret": "Complete in under 5 minutes"
    ],
    "Defeat Big Boss": [
        "Objective": "Beat the boss",
        "Secret": "Win with 50% health"
    ]
]
var gemtoneObjective = questBoard["Fetch Gemstones"]?["Objective"]

//print(gemtoneObjective)
