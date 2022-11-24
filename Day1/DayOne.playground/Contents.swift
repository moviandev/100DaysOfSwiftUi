import Cocoa

var greeting = "Hello, playground"
var name = "Ross"
print(name)

name = "Rachel"
print(name)

name = "Joe"
print(name)

let character = "Monica"

let managerName = "Michael Scott"
let dogBreed = "Shitzu"

let quote = """
 A day in
 the life of an
 Apple engineer
"""

print(quote.count)

print(quote.uppercased())

print(quote.hasPrefix(" A day in"))
print(quote.hasSuffix("engineer"))

let score = 10
let reallyBig = 100_000_000

let lowerScore = score - 2
let higherScore = score + 10
let doubleScore = score * 2
let squareScore = score * score
let halvedScore = score / 2

var counter = 10
counter += 5
print(counter)

counter *= 2
counter -= 10
counter /= 2


let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 3))
