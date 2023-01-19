
import Foundation

var number1 = 3
var number2 = 5

for i in 1...100 {
    if i.isMultiple(of: number1) {
        print("Fizz")
    }; if  i.isMultiple(of: number2) {
        print("Buzz")
    }; if i.isMultiple(of: number2) && i.isMultiple(of: number1) {
        print("FizzBuzz!")
    } else {
        print("\(i)")
    }
}
