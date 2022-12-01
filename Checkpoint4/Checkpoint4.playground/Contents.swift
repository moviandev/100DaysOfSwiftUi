import Cocoa

enum SquareRootErrors: Error {
    case OutOfBound, NoRoot
}

func findSquareRoot(_ number: Int) throws -> Int {
    if (number < 1 || number > 10_000) {
        throw SquareRootErrors.OutOfBound
    }
    
    for i in 1...100 {
        if i * i == number {
            return i
        }
    }
    throw SquareRootErrors.NoRoot
}

do {
    let result = try findSquareRoot(10_000)
    print(result)
} catch {
    print("There's an error \(error.localizedDescription)")
}
