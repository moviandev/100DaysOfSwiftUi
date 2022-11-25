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
