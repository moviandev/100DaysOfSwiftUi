import Cocoa

let opposites = ["Mario": "Wario", "Luigi": "Waluigi"]
if let peachOpposite = opposites["Mario"] {
    print(peachOpposite)
}

var username: String? = nil

if let unwrappedName = username {
    print("We got a user: \(unwrappedName)")
} else {
    print("The optional was empty")
}

var num1 = 1_000_000
var num2 = 0
var num3: Int? = nil

var str1 = "Hello"
var str2 = ""
var str3: String? = nil

var arr1 = [0]
var arr2 = [Int]()
var arr3: [Int]? = nil

func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil

if let number = number {
    print(square(number: number))
}

func printSquare(of number: Int?) {
    guard let number = number else {
        print("Missing input")
        return
    }
    
    print("\(number) * \(number) = \(number * number)")
}

var myVar: Int? = 3

if let myVar = myVar {
    // Run if myVar has value
    myVar
}

//guard let myVar = myVar else {
//    // Run if myVar doesn't have a value inside
//}



