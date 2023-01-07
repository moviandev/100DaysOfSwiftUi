import Cocoa

func randomInt(numbers: [Int]?) -> Int {
    numbers?.randomElement() ?? Int.random(in: 1...100)
}

let test = randomInt(numbers: nil)
print(test)
let test1 = randomInt(numbers: [1,3,4,5])
print(test1)
let test2 = randomInt(numbers: [])
print(test2)
