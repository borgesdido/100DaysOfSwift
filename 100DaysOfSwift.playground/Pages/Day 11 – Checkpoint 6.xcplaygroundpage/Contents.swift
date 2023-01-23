
import Foundation

//The challenge is this: create a struct to store information about a car, including its model, number of seats, and current gear, then add methods to change a gear up or down. I also asked you to think about your use of variables inside the struct, access control, and also how to validate the input for the gear-changing method.




struct Car {
    let model: String
    let seats: Int
   private(set) var gear = 1
    var maximumGear: Int
    
    init(model: String, seats: Int, maximumGear: Int){
        self.model = model
        self.seats = seats
        self.maximumGear = maximumGear
    }
    
    mutating func changeGear(difference: Int){
       gear = gear + difference
        if gear < 1 {
            gear = 1
        } else if gear > maximumGear {
            gear = maximumGear
        }
        
        }
    }
   
    
    
    var car = Car(model: "Palio", seats: 5, maximumGear: 6)
car.changeGear(difference: 0)
print(car.gear)
    

