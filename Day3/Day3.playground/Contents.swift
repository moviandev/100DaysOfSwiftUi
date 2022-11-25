import Cocoa

var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("adrian")

var numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

print(beatles[0])

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(60)
print(scores[1])

var albums = [String]()
albums.append("Folclore")
albums.append("Fearless")
albums.append("Red")

print(albums.count)

var characters = ["Rachel", "Monica", "Ross", "Joe"]
print(characters.count)

characters.remove(at: 2)
print(characters.count)
characters.removeAll()
print(characters.count)

let bondMovies = ["Cassnio Royale", "Spectro", "No time to die"]
print(bondMovies.contains("Friends"))

let cities = ["São Paulo", "Rio de janeiro", "Curitiba"]
print(cities.sorted())

let presient = ["Dilma", "Temer", "Lula"]
let reversedPresidents = presient.reversed()
print(reversedPresidents)

let employee = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashvilee"
]

print(employee["name", default: "Unknown"])

let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

print(olympics[2012, default: "Unknown"])

var heights = [String: Int]()
heights["Yao Ming"] = 229


var archEnemies = [String: String]()
archEnemies["Batman"] = "The joker"
archEnemies["Superman"] = "Lex Luthor"
archEnemies["Batman"] = "Penguin"


var actors = Set([
    "Denzel Washongton",
    "Tom Cruise",
    "Nicolas Cage",
    "Samuel L Jackson"
])

print(actors)

var actors2 = Set<String>()
actors2.insert("Samuel L Jackson")
actors2.insert("Nicolas Cage")
print(actors2)

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var day = Weekday.monday
day = .tuesday
day = .wednesday




