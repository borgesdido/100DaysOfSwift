import Foundation

//MARK: - How to create and use protocols
protocol Vehicle {
    var name: String {get}
    var currentPassengers: Int {get set}
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)

}
    struct Car : Vehicle {
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    func travel(distance: Int) {
        print("I'm driving \(distance)km")
    }
    func openSunroof() {
        print("It's a nice day")
    }
    }


    func commute(distance: Int, using vehicle: Vehicle){
        if vehicle.estimateTime(for: distance) > 100 {
            print("That's too slow! I'll try a different vehicle")
        } else {
            vehicle.travel(distance: distance)
        }
    }

struct Bicycle: Vehicle {
    let name = "Bike"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    func travel(distance: Int) {
        print("I'm cycling \(distance)km")
        
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}
        
    

let car = Car()
commute(distance: 100, using: car)

let bike = Bicycle()
commute(distance: 50, using: bike)

getTravelEstimates(using: [bike, car], distance: 200)


//protocol Purchaseable {
//    var name: String { get set }
//}
//
//struct Book: Purchaseable {
//    var name: String
//    var author: String
//}
//
//struct Movie: Purchaseable {
//    var name: String
//    var actors: [String]
//}
//
//struct Cars: Purchaseable {
//    var name: String
//    var manufacturer: String
//}
//
//struct Coffee: Purchaseable {
//    var name: String
//    var strength: Int
//}
//
//func buy(_ item: Purchaseable) {
//    print("I'm buying \(item.name)")
//}
//
//var coffee = Coffee(name: "Colombia", strength: 2)
//buy(coffee)
//
//var movie = Movie(name: "Gummo", actors: ["tom hanks", "Claudia Raia", "Tim Burton"])
//buy(movie)

//MARK: - How to use opaque return types

func getRandomnumber() -> some Equatable {
    Int.random(in: 1...6)
}

func getRandomBool() -> some Equatable {
    Bool.random()
}

print(getRandomnumber() == getRandomnumber())
//MARK:- How to create and use extensions

var quote = "  The truth is rarely pure and never simple  "

let trimmed = quote.trimmingCharacters(in: .whitespacesAndNewlines)

extension String {
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }
    mutating func trim() {
        self = self.trimmed()
    }
    var lines: [String] {
        self.components(separatedBy: .newlines)
    }

}

quote.trim()

let lyrics = """
But I keep cruising
Can't stop, won't stop moving
It's like I got this music in my mind
Saying it's gonna be alright
"""

print(lyrics.lines.count)

struct Book {
    let title: String
    let pageCount: Int
    let readingTime: Int
}
extension Book {
    init(title: String, pageCount: Int) {
        self.title = title
        self.pageCount = pageCount
        self.readingTime = pageCount / 50
    }
}

let lotr = Book(title: "Lord of the rings", pageCount: 1145)
lotr.readingTime

//MARK: - How to create and use protocol extensions

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

let guests = ["Mario", "Luigi", "Peach"]

if guests.isNotEmpty == false {
    print("Guest count: \(guests.count)")
}

protocol Person {
    var name: String {get}
    func sayHello()
}

extension Person {
    func sayHello() {
        print("Hi, I'm \(name)")
    }
}
struct Employee: Person {
    let name: String
}

let taylor = Employee(name: "Diego")

taylor.sayHello()
