import Cocoa

struct Car {
    private let model: String
    private let seats: Int
    
    //la valeur peut être lue à partir de n’importe où, mais ne peut être modifiée
    //que dans la portée de la classe ou de la structure dans laquelle elle est déclarée.
    private(set) var currentGear: Int {
        willSet(newSelectedGear) {
            if newSelectedGear < 1 || newSelectedGear > 10 {
                print("this gear is not allowed")
            } else {
                print("gear selected : \(newSelectedGear)")
            }
        }
    }
    
    init(carModel: String, carSeat: Int, currentGear: Int) {
        self.model = carModel
        self.seats = carSeat
        self.currentGear = currentGear
    }
    
    mutating func gearUp() {
        self.currentGear += 1
    }
    
    mutating func gearDown() {
        self.currentGear -= 1
    }
    
    
}

var bmw530d = Car(carModel: "bmw", carSeat: 5, currentGear: 3)
bmw530d.gearUp()
bmw530d.gearDown()
bmw530d.gearDown()
bmw530d.gearDown()
bmw530d.gearDown()
