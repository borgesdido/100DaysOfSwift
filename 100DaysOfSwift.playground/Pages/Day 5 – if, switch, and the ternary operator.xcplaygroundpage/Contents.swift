
import Foundation

//MARK: - How to check a condition is true or false

let score = 85

if score > 80 {
    print ("Great Job!")
}
let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads")
}
if percentage < 85 {
    print("Sorry, you failed the test")
}
if age >= 18 {
    print("You're eligible to vote")
}

let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}
if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1, 2 ,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}
print(numbers)

let country = "Canada"

if country == "Australia"{
    print ("Good Day!")
}

let name = "Taylor Swift"
if name != "Anonymous"{
    print ("Welcome \(name)")
}

var username = "didoborges"
username = ""
if username.isEmpty {
    username = "Anonymous"
}

print("Welcome \(username)")

//MARK: - How to check multiple conditions

let a = true
let b = false

if a {
    print("Code to run if a is true")
} else if b {
    print("code to run is a is false and b is true")
} else {
    print("code to run if both a and b are false")
}

let temp = 25

if temp > 20 && temp < 30 {
    print("It's  nice day.")
}

let userAge = 14
let hasParentPermission = false

if userAge >= 18 || hasParentPermission == true {
    print("You can buy the game")
} else {
    print("You cannot buy the game")
}

enum TransportOptions {
    case airplane, helicopter, bicycle,  car , escooter
}

let transport = TransportOptions.airplane

if transport == .airplane || transport == .helicopter {
    print ("Let's fly!")
} else if transport == .bicycle {
    print("I hope there is a bike path")
}else if transport == .car {
    print("Time oto get stuck in traffic")
}else {
    print("I'm going to hire a scooter now!")
}

//MARK: - How to use switch statements to check multiple conditions

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.rain

switch forecast {
case .sun:
    print("It should be a nice day")
case .rain:
    print("Pack an umbrella.")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled")
case .unknown:
    print("Our forecast generator is broken!")
}

let place = "Metropolis"

switch place {
case "Gotham":
    print("Youre Batman!")
case "Mega-City One":
    print("You're Judge Dredd")
case "Wakanda":
    print("You're Black Panther")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print ("A partridge in a pear tree")
}

//MARK: - How to use the ternary conditional operator for quick tests

let myAge = 16
let canVote = myAge >= 16 ? "Yes" : "No"
print(canVote)

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

let names = ["Jayne", "Kaylee", "Mal"]
let crewCount = names.isEmpty ? "No One" : "\(names.count) People"
print(crewCount)

enum Theme {
    case light, dark
}
let theme = Theme.dark
let background = theme == .dark ? "black" : "white"
print(background)
