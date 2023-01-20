
import Foundation

enum RootError : Error {
    case tooLow, tooHigh, notFound
}

func squareRoot(of number: Int) throws -> Int {
    if number < 1 {
        throw RootError.tooLow
    }
    if number > 10_000 {
        throw RootError.tooHigh
    }
    for i in 1...100{
        if  i * i == number {
            return i
        }
    }
    throw RootError.notFound
}

let number = 4444

do {
    let root = try squareRoot(of: number)
    print("The square root of \(number) is \(root)")
} catch RootError.tooLow {
    print("Sorry, \(number) is too low")
}catch RootError.tooHigh {
    print("Sorry \(number) is too high")
}catch RootError.notFound {
    print("Sorry, we could not find an integer square root for \(number)")
}catch {
    print("There was a problem")
}
