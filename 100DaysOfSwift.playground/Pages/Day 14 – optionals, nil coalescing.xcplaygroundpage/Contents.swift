import Foundation

//MARK: - How to handle missing data with optionals

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]

if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
} else {
    print("No opposites for ya")
}

if let peachOpposite = opposites["peach"] {
    print("Peach's opposite is \(peachOpposite)")
} else {
    print("No opposites for ya")
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user \(unwrappedName)")
} else {
    print("The optional was empty")
}

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}
//MARK: - How to unwrap optionals with guard

func printSquare(of number: Int?) {
    guard let number = number else {
        print(" Missing input")
        return
    }
    print("\(number) x \(number) is: \(number * number) " )
}

//var myVar: Int? = 3

//if let unwrapped = myVar {
    // Run if myVar has a value inside
//}

//guard let unwrapped = myVar else {
    // Run if myVar doesn't have a value inside
    
//}

//MARK: - How to unwrap optionals with nil coalescing

let captains = [
    "Enterprise" : "Picard",
    "Voyager" : "Janeway",
    "Defiant" : "Sisko"
]

let new = captains["Serenity"] ?? "N/A"

let tvShows = ["Archer", "Babylon 5", "Ted Lasso"]
let favorite = tvShows.randomElement() ?? "None"

//struct Book {
//    let title: String
//    let author: String?
//}
//
//let book = Book(title: "Beowulf", author: nil)
//let author = book.author ?? "Anonymous"
//
//print(author)

let input = ""
let numbers = Int(input) ?? 0
print(numbers)

//MARK: - How to handle multiple optionals using optional chaining

let names = ["Arya", "Bran", "Robb", "Sansa"]
let chosen = names.randomElement()?.uppercased() ?? "No one"
print("Next in line: \(chosen)")

struct Book {
    let title: String
    let author: String?
}

var book: Book? = nil
let author = book?.author?.first?.uppercased() ?? "A"
print(author)

//MARK:- How to handle function failure with optionals

enum UserError: Error {
    case badID, networkFailed
}

func getUser(id: Int) throws -> String {
    throw UserError.networkFailed
}

if let user = try? getUser(id: 23) {
    print("user: \(user)")
}

let user = (try? getUser(id: 23)) ?? "Anonymous"
print(user)
