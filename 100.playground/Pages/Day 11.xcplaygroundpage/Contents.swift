import Cocoa
//
//private(set) est utilisé pour limiter l’accès en écriture à une propriété.
// Cela signifie que la propriété peut être lue de l’extérieur de la classe,
// mais ne peut être modifiée que de l’intérieur de la classe
struct Doctor {
    var name: String
    var location: String
    private(set) var currentPatient = "No one"
}
let drJones = Doctor(name: "Esther Jones", location: "Bristol")
//forbidden ->
//drJones.currentPatient = "jo"

//
struct Cat {
    static var allCats = [Cat]()
    init() {
        Cat.allCats.append(self)
    }
    static func chorus() {
        for _ in allCats {
            print("Meow!")
        }
    }
}

let mousse = Cat()
let jo = Cat()
Cat.chorus()
