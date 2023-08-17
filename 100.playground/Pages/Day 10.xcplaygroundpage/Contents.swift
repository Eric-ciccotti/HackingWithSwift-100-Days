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
struct EmployeePro {
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

var jonybonobo = EmployeePro(name: "Jony bonbo soft")
jonybonobo.vacationTaken = 10

print(jonybonobo.vacationRemaining)

jonybonobo.vacationRemaining = 10

print(jonybonobo.vacationRemaining)

//property observer
struct Dragon {
    var dragonName = "jo" {
        willSet  {
            print("actual dragon name: \(dragonName)")
            print("new dragon name: \(newValue)")
        }
    }
}

var maxwell = Dragon()
maxwell.dragonName = "pedro"
///
struct Game {
    var score = 0 {
        didSet {
            print("Score is now \(score)")
        }
    }
}

var game = Game()
game.score += 10
game.score -= 3
game.score += 1
//
//memberwise initializer

struct Employee {
    var name: String
    var yearsActive = 0
}

extension Employee {
    init() {
        self.name = "Anonymous"
        print("Creating an anonymous employee…")
    }
}

// creating a named employee now works
let roslin = Employee(name: "Laura Roslin")

// as does creating an anonymous employee
let anon = Employee()

//
struct Language {
    var nameEnglish: String
    var nameLocal: String
    var speakerCount: Int
    init(english: String, local: String, speakerCount: Int) {
        self.nameEnglish = english
        self.nameLocal = local
        self.speakerCount = speakerCount
    }
}
let french = Language(english: "French", local: "français", speakerCount: 220_000_000)

