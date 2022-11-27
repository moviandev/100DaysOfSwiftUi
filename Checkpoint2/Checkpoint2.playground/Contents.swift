import Cocoa

let names = ["Monica", "Ross", "Joey", "Chandler", "Phoebe", "Ross", "Janice", "Joey", "Gunther", "Kathy"]
print("There are \(names.count) names in the array")
var uniqueNames = Set(names)
print("There are \(uniqueNames.count) unique names in the array")

