import Cocoa

let luckyNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]
    .filter { $0 % 2 != 0 }
    .sorted()
    .map { "\($0) is your lucky number" }

luckyNumbers.forEach { print($0) }
