
import Foundation

//MARK: - How to create your own structs

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
}

}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)
let wings = Album(title: "Wings", artist: "BTS", year: 2016)

print(red.artist)
print(wings.artist)

red.printSummary()
wings.printSummary()


struct Employee {
    let name: String
    var vacationAllocated: Int = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get{
        vacationAllocated - vacationTaken
    }
        set {
            vacationAllocated = vacationTaken + newValue
        }
    
}
}

var archer = Employee(name: "Sterling Archer", vacationAllocated:  14)
archer.vacationTaken += 4
print(archer.vacationRemaining)
archer.vacationTaken += 4
print(archer.vacationRemaining)


let kane = Employee(name: "Lana Kane")
let  poovey = Employee(name: "Pam Poovey", vacationAllocated: 50)

// MARK: - How to take action when a property changes

struct Game {
    var score = 0 {
        didSet{
            print("Score is now \(score)")
        }
    }
}
    
var game = Game()
game.score += 10
print("Score is now \(game.score)")
game.score -= 3
print("Score is now \(game.score)")
game.score += 1

struct App {
    var contacts = [String]() {
        willSet{
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was: \(oldValue)")
        }
    }
}

var app = App()
app.contacts.append("Adrian E")
app.contacts.append("Allen W")
app.contacts.append("Ish S")

//MARK: - How to create custom initializers

struct Player {
    let name: String
    let number: Int
    
    init (name: String) {
        self.name = name
        number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megan r")
print(player.number)

