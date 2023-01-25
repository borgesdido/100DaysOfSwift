
import Foundation

//The challenge is this: make a protocol that describes a building, adding various properties and methods, then create two structs, House and Office, that conform to it. You need to require various things in your protocol: properties storing how many rooms it has, the cost as an integer, and a string storing the name of the estate agent who is selling the building. You should also add a method that prints the sales summary of the building, describing what it is along with its other properties.


protocol Building {
    var type: String {get}
    var rooms: Int {get}
    var cost: Int  {get}
    var agent: String {get}
    func printSummary()
}

struct Office: Building {
    var type = "office"
    var rooms: Int
    var cost: Int
    var agent: String
    
    func printSummary() {
        print("Talk to \(agent) to buy this office for $\(cost)")
    }
}
struct House: Building {
    var type = "House"
    var rooms: Int
    var cost: Int
    var agent: String
    
    func printSummary() {
        print("Talk to \(agent) to buy this house for $\(cost)")
    }
}

let exampleHouse = House(rooms: 4, cost: 500_000, agent: "Diego & co")
exampleHouse.printSummary()



