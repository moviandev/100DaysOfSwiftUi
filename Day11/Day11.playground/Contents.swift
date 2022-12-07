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



