import Cocoa

class Vehicle {
    var wheels: Int
    init(wheels: Int) {
        self.wheels = wheels
    }
}
class Truck: Vehicle {
    var goodsCapacity: Int
    init(wheels: Int, goodsCapacity: Int) {
        self.goodsCapacity = goodsCapacity
        super.init(wheels: wheels)
    }
}

///
class Handbag {
var price: Int
init(price: Int) {
    self.price = price
}
}
class DesignerHandbag: Handbag {
var brand: String
init(brand: String, price: Int) {
    self.brand = brand
    super.init(price: price)
}
}
///
///
class Car {
    var brand: String
    var horsePower : Int
    init(brand: String, horsePower: Int){
        self.brand = brand
        self.horsePower = horsePower
    }
}

class CarPrinter : Car {
    func explainMe(){
        print("this is a" + self.brand)
    }
   override init(brand: String, horsePower: Int){
        super.init(brand: brand, horsePower: horsePower)
   }
    
}

var bmwM5 = CarPrinter(brand: "BMW", horsePower: 550)
bmwM5.explainMe()

//deinitiliazer

class User {
    let id: Int

    init(id: Int) {
        self.id = id
        print("User \(id): I'm alive!")
    }

    deinit {
        print("User \(id): I'm dead!")
    }
}

for i in 1...3 {
    let user = User(id: i)
    print("User \(user.id): I'm in control!")
}

///
///
class Player {
    var defaultName = "John Doe"
}

let emingway = Player()
emingway.defaultName = "pedro"

struct PlayerReady {
    var defaultName = "Johne douze"
    var polo : String
}

var boogyman = PlayerReady(polo : "singe")
boogyman.defaultName = "razor blade"

///
class Pizza {
    private var toppings = [String]()
    func add(topping: String) {
        toppings.append(topping)
    }
}
var pizza = Pizza()
pizza.add(topping: "Mushrooms")





