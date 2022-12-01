import Cocoa

enum SquareRootErrors: Error {
    case OutOfBound, NoRoot
}

func findSquareRoot(_ number: Int) throws -> Int {
    if (number < 1 || number > 10_000) {
        throw SquareRootErrors.OutOfBound
    }
    
    var root = 0
    
    for i in 0...100 {
        if i * i == number {
            root = i
            break
        }
    }
    
//    while (root <= 100) {
//        if root * root == number {
//            break
//        }
//
//        root += 1;
//    }
    
    if root == 0 {
        throw SquareRootErrors.NoRoot
    }
    
    return root
}

do {
    let result = try findSquareRoot(10_000)
    print(result)
} catch {
    print("There's an error \(error.localizedDescription)")
}
