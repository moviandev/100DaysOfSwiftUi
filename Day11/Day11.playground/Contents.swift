import Cocoa

struct BankAccount {
    private(set) var funds = 0
    
    mutating func deposit(amount: Int) {
        funds += amount
    }
    
    mutating func withDraw(amount: Int) -> Bool {
        if funds > amount {
            funds -= amount
            return true
        }
        
        return false
    }
}

var account = BankAccount()
account.deposit(amount: 100)

let success = account.withDraw(amount: 200)
if success {
    print("Success")
} else {
    print("There's no sufficient funds")
}

struct School {
    static var  studentCount = 0
    static func add(student: String) {
        print("\(student) joined the school")
        studentCount += 1
    }
}

School.add(student: "test");

struct AppData {
    static let version = "1.3 beta 2"
    static let saveFileName = "settings.json"
    static let homeUrl = "https://some-url.com"
}

print(AppData.version)

struct Employee {
    let username: String
    let password: String
    
    static let example = Employee(username: "coolUserName", password: "c4feNaM3sa")
}

