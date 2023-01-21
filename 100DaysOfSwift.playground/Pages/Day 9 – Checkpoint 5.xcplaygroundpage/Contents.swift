import Foundation
//This challenge tests your ability to create trailing closures, chained together to solve a problem.

//Given a particular array of numbers, the challenge is this: filter out all numbers that are even, sort the array in ascending order, map them to strings in the format “7 is a lucky number”, then print the resulting array one item per line.

let luckyNumbers  = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func isOdd(number: Int)-> Bool {
    number.isMultiple(of: 2) == false
}
func luckyString(_ number: Int)-> String {
    "\(number) is a  lucky number"
}
func printValue(_ string: String) {
    print(string)
}

luckyNumbers.filter (isOdd).sorted().map(luckyString).forEach (printValue)
