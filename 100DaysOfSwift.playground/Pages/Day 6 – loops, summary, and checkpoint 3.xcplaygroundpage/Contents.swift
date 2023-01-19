import Foundation

//MARK: - How to use a for loop to repeat work

let platforms = ["iOS", "macOS", "tvOs", "watchOS"]

for os in platforms {
    print("swift looks great on \(os)")
}

for i in 1...12 {
    print("the \(i) times table")
    
    for j in 1...12 {
        print("   \(j) x \(i) is \(j * i)")
    }
    print()
}

var lyrics = "Haters gonna "

for _ in 1...5{
    lyrics += "hate "
}
print(lyrics)

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

for i in 1..<5 {
    print("Counting from 1 up to 5: \(i)")
}

//MARK: -   How to use a while loop to repeat work

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}
print("Blast off!")

let id = Int.random(in: 1...1000)
let amount = Double.random(in: 0...1)

var roll = 0

while roll != 20 {
    roll = Int.random(in: 1...20)
    print ("I rolled a \(roll)")
}
print("Critical Hit")

//MARK:- How to skip loop items with break and continue

let filenames = ["me.jpg","work.txt","cora.jpg"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename) ")
}

let number1 = 4
let number2 = 14
var multples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multples.append(i)
        
        if multples.count == 10 {
            break
        }
    }
}
print(multples)
