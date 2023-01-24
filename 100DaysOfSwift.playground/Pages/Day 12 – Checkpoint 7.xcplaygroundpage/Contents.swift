

import Foundation

//This challenge tests your ability to understand how class hierarchies fit together, including the ability to change functionality inherited from a parent class by overriding methods.

//The challenge is this: create an Animal class that stores how many legs a given animal has; add Dog and Cat subclasses that both have a speak() method; add Corgi and Poodle subclasses from Dog that override speak(), and Persian and Lion subclasses from Cat that also override speak(). Finally, you need to add an isTame property to Cat, which in turn will require you to handle initialization correctly.

class Animal {
    var legs = 4
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog : Animal {
    
    func speak(){
        print("Au Au Au")
            }
    
}

class Corgi: Dog {
    override func speak() {
        print("woof woof woof")
    }
}

class Poodle: Dog {
    override func speak() {
        print("arf arf arf")
    }
}

class Cat : Animal{
    
    var isTame: Bool
    
    func speak() {
        print("miauuu")
     }
        init(legs: Int, isTame: Bool) {
            self.isTame = isTame
            super.init(legs: legs)
            
    }
}

class Persian: Cat {
    
    override func speak() {
        print("meownnnnn")
    }
}

class Lion: Cat {
    override func speak() {
        print("ROOOOOOARRRRR")
    }
}

let cat = Cat(legs: 4, isTame: false)
cat.speak()
cat.isTame = true

let persian = Persian(legs: 4, isTame: true)
persian.speak()

let lion = Lion(legs: 4, isTame: false)
lion.speak()

let dog = Dog(legs: 4)
dog.speak()

let corgi = Corgi(legs: 4)
corgi.speak()

let poodle = Poodle(legs: 5)
poodle.speak()
