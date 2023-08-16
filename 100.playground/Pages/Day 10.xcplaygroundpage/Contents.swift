import Cocoa

struct Personnage {
    var name: String
    var age: Int
    
    mutating func setName(newName: String) {
        name = newName
    }
    
    func sayHello() {
        print("Hello " + name)
    }
    

}

var Jone = Personnage(name:"Jone",age: 10)
Jone.sayHello()

///
///
struct Employee {
    let name: String
    var vacationAllocated = 14
    var vacationTaken = 0
    
    var vacationRemaining: Int {
        get {
            vacationAllocated - vacationTaken
        }

        set {
            vacationAllocated = vacationTaken + newValue
        }
    }
}

var jonybonobo = Employee(name: "Jony bonbo soft")
jonybonobo.vacationTaken = 10

print(jonybonobo.vacationRemaining)

jonybonobo.vacationRemaining = 10

print(jonybonobo.vacationRemaining)
    

