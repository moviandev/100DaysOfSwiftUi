import Cocoa

class Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var newGame = Game()
newGame.score += 10

class Employee {
    let hours: Int
    
    init(hours: Int) {
        self.hours = hours
    }
    
    func printSummary() {
        print("I work \(hours) for day")
    }
}

var newEmployee =  Employee(hours: 3)

final class Developer: Employee {
    func work() {
        print("I'm writing code for \(hours) hours")
    }
}

final class Manager: Employee {
    func work() {
        print("I'm going to meetings for \(hours) hours")
    }
    
    override func printSummary() {
        print("Test")
    }
}

let robert = Developer(hours: 8)
let jason =  Manager(hours: 10)

robert.work()
jason.work()
robert.printSummary()
jason.printSummary()

class Vehicle {
    let isEletric: Bool
    
    init (isEletric: Bool) {
        self.isEletric = isEletric
    }
}

class Car: Vehicle {
    let isConvertible: Bool
    
    init(isEletric: Bool, isConvertible: Bool) {
        self.isConvertible = isConvertible
        super.init(isEletric: isEletric)
    }
}

let teslaX = Car(isEletric: true, isConvertible: false)

class User {
    var username = "Anonymous"
    
    func copy() -> User {
        let user = User()
        user.username = username
        return user
    }
}

var user1 = User()
var user2 = user1
user2.username = "Taylor"

print(user1.username)
print(user2.username)

class User1 {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }
    
    deinit {
        print("User \(id): I'm dead")
    }
}

var users = [User1]()

for i in 1...3 {
    let user3 = User1(id: i)
    print("User \(user3.id): I'm in control")
    users.append(user3)
}

print("Loop finished:")
users.removeAll()
print("Array clear")

class User2 {
    var name = "Paul"
}

var user4 = User2()
user4.name = "Taylor"
print(user4.name)

user4 = User2()
print(user4.name)

