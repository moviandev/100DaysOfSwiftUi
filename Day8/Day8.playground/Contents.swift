import Cocoa

func printTimesTables(for number: Int, end: Int = 10) {
    for i in 1...end {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 6)


var characters = ["Ross", "Rachel", "Monica"]
print(characters.count)
characters.removeAll(keepingCapacity: true)
print(characters.count)
