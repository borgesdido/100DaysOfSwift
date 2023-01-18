import Foundation

//MARK: - How to use type annotations

let surname: String = "Lasso"
let score: Double = 0

let playerName: String = "Roy"
var luckyNumber: Int = 13
let pi: Double = 3.141
var isAuthenticated: Double = true

var albums: [String] = ["Red", "Fearless"]
var user: [String: String] =["id:", "borgesdido"]
var books: Set<String> = Set ["The Bluest eye", "Foundation", "Girl, woman, other"]

var soda: [String] = ["Coke", "Pepsi", "Guarana"]
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

enum UIStyle {
    case light, dark, system
}
var style = UIStyle.light
style = .dark

