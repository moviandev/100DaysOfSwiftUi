import Cocoa

let score = 85

if score > 80 {
    print("great job")
}

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, we don't need roads")
}

if percentage < 85 {
    print("Sorry, you failed the test")
}

if age >= 18 {
    print("You're eligible to vote")
}

let ourName = "Dave Lister"
let friendName = "Anorld Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}

var numbers = [1,2,3]
numbers.append(4)

if numbers.count > 3 {
    numbers.remove(at: 0)
}

print(numbers)

let country = "Brazil"

if country == "France" {
    print("Bonjour")
}

let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome: \(name)")
}

var username = "movian"

if username.isEmpty {
    username = "Anonymous"
}

print("Welcome, \(username)")

let age1 = 16

if age1 >= 18 {
    print("You can vote in the next election")
} else {
    print("Sorry, You're too young to vote")
}

let temp = 25

// bad code
if temp > 20 && temp < 30 {
    print("It's a nice day")
}

let userAge = 14
let hasParentalConsent =  true

if age >= 18 || hasParentalConsent {
    print("You can buy the game!")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, escooter
}

let transport = TransportOption.bicycle

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if (transport == .bicycle) {
    print("I hpoe there's a bike path...")
} else if (transport == .car) {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a escooter now!")
}

enum Forecast {
    case sun, rain, wind, snow, unknown
}

let forecast = Forecast.rain

switch forecast {
case .sun:
    print("It should be a nice day")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled")
case .unknown:
    print("Our forescast generator is broken")
}

let place = "Metropolis"
switch place {
case "Gotham":
    print("You're Batman")
case "Mega-City one":
    print("You're Judge Dredd")
case "Wakanda":
    print("You're black Panther!")
default:
    print("Who are you?")
}

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 franch hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}


