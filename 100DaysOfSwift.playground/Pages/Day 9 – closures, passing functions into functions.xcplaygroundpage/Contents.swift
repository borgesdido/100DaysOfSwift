import Foundation

// MARK: - How to create and use closures

let sayHello = { (name: String) -> String in
    "Hi \(name)!"
    
}
sayHello("Taylor")

func greetUser () {
    print ("Hi there")
}

var greetCopy : () -> Void = greetUser

func gettUserData (for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    } else {
        return "Anonymous"
    }
}

let data: (Int) -> String = gettUserData
let user = data(1989)
print(user)


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted (name1: String, name2: String) -> Bool {
    if name1 == "Suzanne"{
        return true
    }else if name2 == "Suzanne"{
        return false
    }
    return name1 < name2
}

//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)

//let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
//    if name1 == "Suzanne"{
//        return true
//    }else if name2 == "Suzanne"{
//        return false
//    }
//    return name1 < name2
//
//})
//
//print(captainFirstTeam)

// MARK: - How to use trailing closures and shorthand syntax


let captainFirstTeam = team.sorted {
    if $0 == "Suzanne"{
        return true
    }else if $1 == "Suzanne"{
        return false
    }
    return $0 < $1
    
}
print(captainFirstTeam)

let reversedTeam = team.sorted {$0 > $1}
print(reversedTeam)

let tOnly = team.filter{ $0.hasPrefix("T") || $0.hasPrefix("S")}
print(tOnly)

let uppercasedTeam = team.map {$0.uppercased()}
print(uppercasedTeam)

// MARK: - How to accept functions as parameters

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    return numbers
}

let rolls = makeArray(size: 20){
    Int.random(in: 1...20)
}
func generateNumber() -> Int {
    Int.random(in: 1...30)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls)

func doimportantWork (first: () -> Void, second: () -> Void, third: () -> Void){
    print("About to start first work")
    first()
    print("About to start second work")
    second()
    print("About to start third work")
    third()
}
doimportantWork {
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("this is the third work")
}
