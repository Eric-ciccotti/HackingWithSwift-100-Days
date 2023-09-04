import Foundation

protocol Building {
    var rooms : Int { get set }
    var coast : Int { get set }
    var estateAgent: String { get set }
    func salesSummary () -> Void
}

extension Building {
    func saleSummary () -> Void {
        print("there is \(rooms) rooms, the price is \(coast) and the estage agent is \(estateAgent)")
    }
}

struct House : Building {
    var rooms: Int
    var coast: Int
    var estateAgent: String
    func salesSummary() {
        print("there is \(rooms) rooms, the price is \(coast) $ and the estage agent is \(estateAgent)")
    }
}

var panthom = House(rooms: 10, coast: 10_000_000_000, estateAgent: "John bendu")
panthom.salesSummary()
panthom.coast = 2_000
panthom.salesSummary()



