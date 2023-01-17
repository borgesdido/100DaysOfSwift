
import Foundation

//MARK: - How to store ordered data in arrays

var beatles = ["John", "Paul", "Ringo", "George"]
beatles.append("Diego")
print(beatles[0])

var numbers = [4, 8, 15, 34, 56]
print(numbers[3])

var temperatures = [19.0, 23.1, 30.5]
print(temperatures[2])


var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(20)
print(scores[0])
scores.sort()
print(scores[0])

var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")

var songs = ["Money"]
songs.append("Brain Damage")
songs.append("Hey you")

var characters = ["Luffy", "Nami", "Sanji", "Zoro"]
print(characters.count)

characters.remove(at: 3)
print(characters.count)

characters.removeAll()
print(characters.count)

let bondMovies = ["Cassino Royale", "Spectre", "No time to die"]
print(bondMovies.contains("frozen"))

let cities = ["London", "Paris", "Rio", "Tokyo"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents  = presidents.reversed()
print(reversedPresidents)

// MARK: - How to store and find data in dictionaries

var employee = ["Taylor Swift", "Singer", "Nashville"]
print("name\(employee[0])")
print("job\(employee[1])")
print("city \(employee[2])")

var employee2 = ["name": "Taylor Swift","job": "Singer","city": "Nashville"]
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["city", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve" : true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]
print(olympics[2012, default:"Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'neal"] = 216
heights["LeBron James"] = 206

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"

archEnemies["Batman"] = "The Penguin"

//MARK: - How to use sets for fast data lookup

let actors = Set (["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])
print(actors)

var actors2 = Set<String>()
actors2.insert("Denzel Washington")
actors2.insert("Tom Cruise")
actors2.insert("Nicolas Cage")
actors2.insert("Samuel L Jackson")
print(actors2)

//MARK: - How to create and use enums

enum WeekDay {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

var day = WeekDay.monday
day = WeekDay.friday
day = WeekDay.tuesday


enum Months {
    case january, february, march, april, may, june, july, august, september, october, november, december
}

var month = Months.april
month = .august
month = .february
month = .january
