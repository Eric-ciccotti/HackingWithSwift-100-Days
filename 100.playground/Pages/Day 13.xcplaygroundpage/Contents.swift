import Cocoa

protocol Vehicle {
    var name: String { get }
    var currentPassengers: Int { get set }
    func estimateTime(for distance: Int) -> Int
    func travel(distance: Int)
}

struct Car: Vehicle {
    let name = "Car"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 50
    }
    
    func travel(distance: Int) {
        print("I'm driving \(distance)km.")
    }
    
    func openSunroof() {
        print("It's a nice day!")
    }
}

struct Bicycle: Vehicle {
    let name = "Bicycle"
    var currentPassengers = 1
    func estimateTime(for distance: Int) -> Int {
        distance / 10
    }
    
    func travel(distance: Int) {
        print("I'm cycling \(distance)km.")
    }
}



func commute(distance: Int, using vehicle: Vehicle) {
    if vehicle.estimateTime(for: distance) > 100 {
        print("That's too slow! I'll try a different vehicle.")
    } else {
        vehicle.travel(distance: distance)
    }
}

func getTravelEstimates(using vehicles: [Vehicle], distance: Int) {
    for vehicle in vehicles {
        let estimate = vehicle.estimateTime(for: distance)
        print("\(vehicle.name): \(estimate) hours to travel \(distance)km")
    }
}

let bike = Bicycle()
commute(distance: 50, using: bike)

let car = Car()
commute(distance: 100, using: car)

getTravelEstimates(using: [bike, car], distance: 20)

///
///
protocol TravellingStuff {
    var name: String { get set }
}

struct Valise : TravellingStuff {
    var name: String
    var isBig: Bool
}

struct Vetements : TravellingStuff {
    var name: String
    var size: [String]
}

func showMe(stuff: TravellingStuff) {
    print("wwoo nice \(stuff.name)")
}

var tShirt = Vetements(name:"t-shirt nike", size: ["l","xl"])

showMe(stuff: tShirt)

///
//
extension String {
    func spacemagik() -> String {
        var result = self.uppercased().map { String($0) }.joined(separator: " ")
        result.append(" !!!")
        return result
    }
}

var body = "I'm the most hot bro"
var result = body.spacemagik()
print(result)
///
extension String {
    mutating func append(_ other: String) {
        self += other
    }
}
/// computed closure
extension String {
    var isLong: Bool {
        return count > 25
    }
}

print(body.isLong)

//
extension String {
    func withPrefix(_ prefix: String) -> String {
        if self.hasPrefix(prefix) { return self }
        return "nice prefix ! : \(prefix) + \(self)"
    }
}

print(body.withPrefix("I'm"))
print(body.withPrefix("Youpi "))
//
extension String {
    func isUppercased() -> Bool {
        print("self : \(self)")
        return self == self.uppercased()
    }
}

print("YE BODY".isUppercased()) // true
print("ye BODY".isUppercased()) // false

///
///
protocol SmartPhone {
    func makeCall(to name: String)
}
extension SmartPhone {
    func makeCall(to name: String) {
        print("Dialling \(name)...")
    }
}

struct NokiaPhone: SmartPhone {
    func makeCall(to name: String) {
        print("Dialling \(name)...")
    }
}

var nokia: SmartPhone = NokiaPhone()

///
protocol Shape {
    func draw() -> String
}

struct Triangle: Shape {
    var size: Int
    func draw() -> String {
        var result: [String] = []
        for longueur in 1...size {
            result.append(String(repeating: "*", count: longueur))
        }
        return result.joined(separator: "\n")
    }
}

let smallTriangle = Triangle(size: 3)
print(smallTriangle.draw())

