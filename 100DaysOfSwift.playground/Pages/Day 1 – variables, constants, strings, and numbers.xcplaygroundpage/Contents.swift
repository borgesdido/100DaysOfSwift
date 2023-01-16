import UIKit
import Foundation
// MARK: - variables

var greeting = "Hello, Playgrond"

var name = "Ted"
name = "Rebecca"
name = "Keeley"

var playerName = "Roy"
print (playerName)

playerName = "Sam"
print(playerName)

playerName = "Dani"
print(playerName)
// MARK: - Constants

let character = "Dafne"

let managerName = "Michael Scott"
let catBreed = "Sphinx"
let favoriteSong = "Brain Damage"
// MARK: - Strings

let actorName =  "Denzel Washington"
let fileName = "paris.jpeg"
let quote  = "Then he tapped a sign saying \"Believe\" and walked away"
let movie = """
A day in
the life of an
Apple Engineer
"""
print(movie.count)

let nameLenght = actorName.count
print(nameLenght)

print (fileName.uppercased())

print (movie.hasPrefix("A day"))
print (fileName.hasSuffix (".jpeg"))
// MARK: - Integers

let score = 10
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubleScore = score * 2
let squaredScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5
print (counter)

counter *= 2
counter -= 10
counter /= 2

let number = 120
print(number.isMultiple(of: 3))

// MARK: - Doubles

let numbers = 0.1 + 0.2
print(numbers)

let double1 = 3.1
let double2 = 313131.313131
let double3 = 3.0
let int1 = 3

