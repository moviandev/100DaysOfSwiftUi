import Cocoa

enum GearError: Error {
    case NotPermitted
}

struct Car {
    let model: String
    let numberOfSeats: Int
    private(set) var CurrentGear: Int = 0 {
        didSet {
            print("Old value \(oldValue)")
        }
        willSet {
            print("New Value \(newValue)")
        }
    }
    
    mutating func Up(gear: Int) throws {
        if gear < 1 || gear > 10 {
            throw GearError.NotPermitted
        }
        
        CurrentGear = gear;
    }
    
    mutating func Down(gear: Int) throws {
        if gear < 1 || gear > 10 {
            throw GearError.NotPermitted
        }
        
        CurrentGear = gear;
    }
    
    mutating func GoNeutral() {
        CurrentGear = 0
    }
}

var newCar = Car(model: "SUV", numberOfSeats: 7)

do {
    try newCar.Up(gear: 5);
} catch {
    print("Error While trying to change gears \(error.localizedDescription)")
}

do {
    try newCar.Down(gear: 2);
} catch {
    print("Error While trying to change gears \(error.localizedDescription)")
}
