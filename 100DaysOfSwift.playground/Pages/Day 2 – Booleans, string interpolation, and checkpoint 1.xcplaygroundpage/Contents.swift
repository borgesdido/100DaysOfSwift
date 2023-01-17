
import Foundation
//MARK: - Booleans

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

let goodDogs = true

var gameOver = false
print(gameOver)
gameOver.toggle()
print(gameOver)


let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)

// MARK: -  How to join strings together


let firstPart = "Hello"
let secondPart = "world!"
let greeting = firstPart + secondPart

let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)

let luggageCode = "1" + "2" + "3" + "4" + "5"

let name = "Diego"
let age = 31
let message = "Hello, my name is \(name) and I`m \(age) years old."
print(message)

let myNumber = 11
let missionMessage = "Apolo \(myNumber) landed on the moon!"

print ("5 x 5 is \(5 * 5 )")

//MARK: - checkpoint 1

let celsius = 23.0
let convertFahreinheit = celsius * 9 / 5 + 32

print ("\(celsius)°C is converted to \(convertFahreinheit)°F")

