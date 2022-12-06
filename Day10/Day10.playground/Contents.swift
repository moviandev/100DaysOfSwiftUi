import Cocoa

struct Album {
    let title: String
    let artist: String
    let year: Int
    
    func printSummary() {
        print("\(title) (\(year)) by \(artist)")
    }
}

let red = Album(title: "Red", artist: "Taylor Swift", year: 2012)

print(red)
red.printSummary()

struct Employee {
    let name: String
    var vacationRemaining: Int
    
    mutating func takeVacation(days: Int) {
        if vacationRemaining > days {
            vacationRemaining -= days
            print("I'm going on vacation")
            print("Days remaining: \(vacationRemaining)")
        } else {
            print("Oops! Tere aren't enough days remaining")
        }
    }
}

var archor = Employee(name: "Sterling Archer", vacationRemaining: 16)
archor.takeVacation(days: 6)
print(archor.vacationRemaining)

struct Employee1 {
    let name: String
    var vacationAllocated: Int = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }
        
        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var archer = Employee1(name: "Testing", vacationAllocated: 14)
archer.vacationTaken += 4
print(archer.vacationRemaining)

archer.vacationRemaining = 5
print(archer.vacationAllocated)


struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1


struct App {
    var contacts = [String]() {
        willSet {
            print("Current value is: \(contacts)")
            print("New value will be: \(newValue)")
        }
        didSet {
            print("There are now \(contacts.count) contacts")
            print("Old value was \(oldValue)")
            print()
        }
    }
}

var app = App()
app.contacts.append("Adrian")
app.contacts.append("Test")
app.contacts.append("West")


struct Player {
    let name: String
    let number: Int
    
    init(name: String) {
        self.name = name
        self.number = Int.random(in: 1...99)
    }
}

let player = Player(name: "Megn R")
print(player.number)


