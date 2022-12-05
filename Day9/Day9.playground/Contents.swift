import Cocoa

func greetUser() -> () {
    print("Hi there!")
}

greetUser()
var greetCopy: () -> Void = greetUser
greetCopy()

// Closure
let sayHello = {
    print("Hi there!")
}
sayHello()

let sayHello1 = { (name: String) -> String in
    "Hi \(name)"
}

print(sayHello1("Taylor"))

let team = ["Gloria", "Manny", "Joey", "Tess"]
let sortedTeam = team.sorted()
print(sortedTeam)

func captainFirstSorted(name1: String, name2: String) -> Bool {
    if name1 == "Manny" {
        return true
    } else if name2 == "Manny" {
        return false
    }
    
    return name1 < name2
}


//let captainFirstTeam = team.sorted(by: captainFirstSorted)
//print(captainFirstTeam)


let captainFirstTeam = team.sorted {
    if $0 == "Manny" {
        return true
    } else if $1 == "Manny" {
        return false
    }
    
    return $0 < $1
}

print(captainFirstTeam)

let reverseTeam = team.sorted { $0 > $1 }
print(reverseTeam)

let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly)

let upperCaseTeam = team.map { $0.uppercased() }
print(upperCaseTeam)

func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()
    
    for _ in 0..<size {
        let newNumber = generator()
        numbers.append(newNumber)
    }
    
    return numbers
}

let rolls = makeArray(size: 50) {
    Int.random(in: 1...20)
}

print(rolls)

func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first important work")
    first()
    print("About to start second important work")
    second()
    print("About to start third important work")
    third()
}

doImportantWork {
    print("This  is the first work")
} second: {
    print("This  is the second work")
} third: {
    print("This  is the thrid work")
}
