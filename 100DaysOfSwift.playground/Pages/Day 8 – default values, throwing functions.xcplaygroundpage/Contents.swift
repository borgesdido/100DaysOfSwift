import Foundation

//MARK: - How to provide default values for parameters

func printTimesTable (for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}
printTimesTable(for: 5, end: 20)
printTimesTable(for: 4)

var characters = ["Lana", "Pam", "Roy", "Sterling"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)

//MARK: - How to handle errors in functions

enum PasswordError: Error {
    case short, obvious
}

func checkPassword(_ password: String) throws -> String {
    
    if password.count < 5 {throw PasswordError.short}
    if password == "12345" {throw PasswordError.obvious}
    
    if password.count < 8 {
        return "ok"
    } else if password.count < 10 {
        return "Good"
    } else {
        return "Excellent"
    }
    
}

let string = "12345"
do {
    let result = try checkPassword(string)
    print("password rating: \(result)")
}catch PasswordError.short {
    print("too short!")
}catch PasswordError.obvious {
    print("too obvious my friend")
}catch {
    print("Oh, there is a error: \(error.localizedDescription)")
}
