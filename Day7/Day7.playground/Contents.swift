import Cocoa

func showWelcome() {
    print("Welcome to my app!")
    print("By default this prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want")
}

showWelcome()

let number = 139

if number.isMultiple(of: 2) {
    print("even")
} else {
    print("odd")
}

func printTimesTables(number: Int, end: Int) {
    for i in 1...end {
        print("\(i) * \(number) is \(i * number)")
    }
}

printTimesTables(number: 8, end: 20)

let root = sqrt(169)
print(root)

func rollDice() -> Int {
    Int.random(in: 1...6)
}

let result = rollDice()
print(result)

func hasSameLetters(str1: String, str2: String) -> Bool {
    str1.sorted() == str2.sorted();
}

let test = hasSameLetters(str1: "Matheus", str2: "Movian");
print(test)

func pythagoras(a: Double, b: Double) -> Double {
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print(c)

func sayHello() {
    print("Hello!")
    return
}

func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

func getUser() -> (firstName: String, lastName: String) {
    ("Taylor", "Swift")
}

let (firstName, lastName) = getUser()
print("First name: \(firstName) surname: \(lastName)")




