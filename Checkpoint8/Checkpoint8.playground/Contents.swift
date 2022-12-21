import Cocoa

protocol Building {
    var name: String { get }
    var rooms: Int { get }
    var cost: Int { get set }
    var realStateAgentName: String { get set }
    func salesSummary() -> Void
}

extension Building {
    func salesSummary() {
        print("Building of type \(name) | Real State Agent: \(realStateAgentName) | Current cost: \(cost) | Rooms: \(rooms)")
    }
}

struct Office: Building {
    let name = "Office"
    let rooms: Int
    var cost: Int
    var realStateAgentName: String
}

struct House: Building {
    let name = "House"
    let rooms: Int
    var cost: Int
    var realStateAgentName: String
}

let house = House(rooms: 3, cost: 999, realStateAgentName: "Jane")
house.salesSummary()

let office = Office(rooms: 9, cost: 1000, realStateAgentName: "John")
office.salesSummary()
