/*:
 # Introducing Protocols
 ---
 
 ## Topic Essentials
 Swift protocols are essentially groups of properties and behaviors that can be adopted by a class or struct. If a class or struct implements a protocol, that class or struct enters into an agreement that says they will follow the blueprint the protocol has set out.
 
 ### Objectives
 + Declare a protocol
 + Add properties, a function and an initializer
 + Create a struct that adopts the protocol
 + Adopt multiple protocols
 
 [Previous Topic](@previous)                                                 [Next Topic](@next)

 */
// Declare a protocol
protocol Collactable {
    var name: String { get }
    var price: Int { get set }
    
    init(withName: String, startingPrice: Int)
    func collect() -> Bool
    
}

extension Collactable {
    var priceIncrease: Int {
        return self.price * 10
    }
    
    init(name: String) {
        self.init(withName: name, startingPrice: 100)
    }
    
    //default immplementation of the collect function
    func collect() -> Bool {
        print("Default item couldn't be collected...")
        return false
    }
}


protocol Usable {
    func used()
}

// Protocol adoption
class Item: Collactable, Usable {
    var name: String
    var price: Int
    
    required init(withName: String, startingPrice: Int) {
        self.name = withName
        self.price = startingPrice
    }
    
    //func collect() -> Bool {
    //    print("Item collected!")
      //  return true
   // }
    
    func used() {
        print("Item used!")
    }
}

//create instance of the class
let potion = Item (withName: "High Potion", startingPrice: 45)
potion.collect()
potion.used()

let antidote = Item(name: "Antidote")
antidote.price


extension String {
    func fancyDebug() {
        print("This string has \(self.count) characters ...")
    }
}

antidote.name.fancyDebug()
