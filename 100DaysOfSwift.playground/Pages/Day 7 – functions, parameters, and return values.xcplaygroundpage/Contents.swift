import Foundation


//MARK: - How to reuse code with functions

func printTimesTable(number: Int, end: Int){
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(number: 5, end: 20)

//MARK:- How to return values from functions

func sameLetters (a: String, b: String) {
    if a.sorted() == b.sorted() {
        print ("\(a) and \(b) has the same letters")
    } else {
        print ("no lucky")
    }
}
sameLetters(a: "geido", b: "diego")

func rollDice() -> Int {
    return Int.random(in: 1...6)

    }

let result = rollDice()

print(result)

func pythagoras(a: Double, b: Double)-> Double {
   // let input = a * a + b * b
    //let root = sqrt(input)
    //return root
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

//MARK: - How to return multiple values from functions

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Diego", lastName: "Borges")

}

let user = getUser()
print ("Name: \(user.firstName) \(user.lastName)")

//MARK: - How to customize parameter labels

func isUppercase (_ string: String) -> Bool {
    string == string.uppercased()
}
let string = "hello world!"
let results = isUppercase(string)


func printTimesTable(number: Int) {
    for i in 1...12 {
        print ("\(i) x\(number) is \(i * number)")
    }
}
printTimesTable(number: 5)
