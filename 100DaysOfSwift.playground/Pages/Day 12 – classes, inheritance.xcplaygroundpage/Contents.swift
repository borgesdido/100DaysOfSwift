
import Foundation

//MARK:- How to create your own classes

class Game {
    var score = 0{
    didSet {
        print("Score is now \(score)")
    }
}
}
var newGame = Game()
newGame.score += 10

//MARK: - How to make one class inherit from another

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I Work \(hours) hours a day")
    }
}
final class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours")
    }
   override func printSummary() {
        print("I'm a developer who will sometimes work \(hours) hours a day, but other times will spend hours arguing about wheter code shold be indented using tabs or spaces")
}
}
final class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours")
    }
}
let diego = Developer(hours: 8)
let juliana = Manager(hours: 12)

diego.printSummary()
juliana.printSummary()

//MARK: - How to add initializers for classes

class Vehicle {
    let isEletric: Bool
    
    init(isEletric: Bool) {
        self.isEletric  = isEletric
    }
}

class Car : Vehicle {
    let isConvertible: Bool
    
    init(isEletric: Bool ,isConvertible : Bool) {
        self.isConvertible = isConvertible
        super.init(isEletric: isEletric)
    }
}

let teslaX = Car(isEletric: true, isConvertible: false)

//MARK: - How to copy classes
    
class User {
    var userName = "Anonymous"
    
    func copy() -> User{
    let user = User()
        user.userName = userName
        
        return user
}
}
var user1 = User()
var user2 = user1.copy()

user2.userName = "Taylor"
print(user1.userName)
print(user2.userName)

//MARK:- How to create a deinitializer for a class

class Usuario {
    let id: Int
    
    init(id: Int){
        self.id = id
        print ("User\(id): I'm alive!")
    }
    
    deinit {
        print("User\(id): I'm dead!")
    }
}
var users = [Usuario]()
for i in 1...3 {
    let user = Usuario(id: i)
    print("User \(user.id): I'm in control!")
    users.append(user)
}
print("Loop is finished")
users.removeAll()
print("Array is clear!")

