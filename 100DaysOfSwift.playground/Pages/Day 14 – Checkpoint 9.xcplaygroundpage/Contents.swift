import Foundation

func getNumber (in array: [Int?]?) -> Int {
    var random = Int.random(in: 1...100)
   return  (array?.randomElement() ?? random ) ?? random

}



