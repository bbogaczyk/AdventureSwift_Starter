/*:
 # Chapter Challenge: Inventory Management
 ---
 
 ### Tasks
 1. Create a class called **Item** and declare properties for **name**, **price**
 2. Declare a default initializer and set the instance properties
 3. Create a struct called **BonusEffect** and declare an integer property named **bonus**
 4. Add an optional **BonusEffect** property to **Item** named **secret**
 5. Create a new class called **Inventory** with an Items array property named **storedItems**
 6. Declare a default initializer that takes in an array of Items and assigns them to **storedItems**
 7. Create a **BonusEffect** and two **Items** instances and assign the bonus effect as one items **secret**
 8. Create an **Inventory** instance, initialize it with the item and weapon, and use optional chaining to unwrap one of the items **bonus** value
 
 [Previous Topic](@previous)
 
 */
// 1 Create a class called Item and declare properties for name, price
class Item {
    var name: String
    var price: Int
    
    // 4 Add an optional BonusEffect property to Item named secret
    var secret: BonusEffect?

// 2 Declare a default initializer and set the instance properties
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }

}

// 3 Create a struct called BonusEffect and declare an integer property named bonus
struct BonusEffect {
    var bonus: Int
    
}


// 5 Create a new class called Inventory with an Items array property named storedItems
class Inventory {
    var storedItems: [Item]

    
// 6 Declare a default initializer that takes in an array of Items and assigns them to storedItems
    init(items: [Item]) {
        self.storedItems = items
    }
}


// 7 Create a BonusEffect and two Item instances and assign the bonus effect as one items secret
var partyWideEffect = BonusEffect(bonus: 15)
var potion = Item(name: "Secret Healing Liquid", price: 150)
var antidote = Item(name: "Antidote", price: 250)

potion.secret = partyWideEffect

// 8 Create an Inventory instance, initialize it with the item and weapon, and use optional chaining to unwrap one of the items bonus value
var inventory = Inventory.init(items: [potion, antidote])
if let itemPower = inventory.storedItems[0].secret?.bonus {
    print("Healing potion has the power of: \(itemPower)")
} else {
    print("The item queried has not secret effect...")
}
