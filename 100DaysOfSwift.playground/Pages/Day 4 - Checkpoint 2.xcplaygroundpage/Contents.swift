import Foundation


var characters = ["Denji", "Power", "Aki", "Makima", "Pochita", "Chainsaw-man", "Halloween", "Power", "Denji"]
print(characters.count)

var isDupe = Set(["Denji", "Power", "Aki", "Makima", "Pochita", "Chainsaw-man", "Halloween", "Power", "Denji"])
isDupe.contains("Power")
print (isDupe.count)
