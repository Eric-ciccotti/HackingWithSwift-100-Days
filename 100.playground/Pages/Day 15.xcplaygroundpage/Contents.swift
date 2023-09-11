import Foundation

var greeting = "Hello, playground"


var stringWithSlash = "this is a \" very cool \" string."
print(stringWithSlash)

var multilinesStrings = """
this is a string
multiples
lines
"""

print(multilinesStrings)

enum DoomGames {
    case Doom95, Doom2, Doom3
}

var currentGame = DoomGames.Doom95

switch currentGame {
case .Doom95 :
    print("nice but old game")
case .Doom2 :
    print("good in 98")
default :
    print("you play an fps for sure !")
}

print(currentGame)

var dico : Dictionary<String, Bool> = ["jo":false, "niakaté": true]
var dicoToo : [String : Bool] = ["jo":false, "niakaté": true]

var newArray : [String] = [String]()
var newSet : Set<Int> = Set([1,1,2,2,2,3,5])
var setName : Set<String> = Set(["predro","predro","rodke","jo","michluxe"])

let files : [String] = ["jo.jpg","mousse.txt","dule.bmp"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    print("wow we found a jpg file ! : \(file)")
}

//tuple
func getUser() -> (firstName: String, age: Int) {
    return (firstName : "Jony", age: 10)
}

var (_ ,age) = getUser()
print(age)

func capitalizer(name: String, age: Int) -> (no: String, ageLessOne: Int) {
    return (no: name.uppercased(), ageLessOne: age - 1)
}

print(capitalizer(name: "jonny bonobo",age: 12))
//


///
///
///error case
enum Password: Error {
    case obvious, badLength
}

///function that return error enum
func checkPassword(_ password: String) throws -> String {
    if(password.count < 4) {
        throw Password.badLength
    }
    
    if(password == "1234") {
        throw Password.obvious
    }
    
    if (password.count > 10 && password != "1234") {
        return "password VALID !"
    } else {
        return "Good"
    }
}

var myPassword = "Acod^^fùe^pfo&é"

//do to try my function that throw errors
do {
    let result = try checkPassword(myPassword)
    print("the rating is \(result)")
} catch Password.badLength {
    print("length is not good should no be under 4 characters")
} catch Password.obvious {
    print("are you serious man ? find a better password seriously")
} catch {
    print("hmmm something went wrong")
}

var SayMyName = { (name: String) -> Void in
    print("your name is \(name)")
}

SayMyName("Jonny")

let whoAreYou = ["jack","jones","boss"]

//la fonction filtrer prend un prédicat
//et va renvoyer les élements qui sont vrai pour le prédicat
let filterBoss = whoAreYou.filter { $0.contains("boss")
}

print(filterBoss)

///
struct Voiture {
    var isFourWheel: Bool = true;
    var brand : String;
    var power: Int
    var horsePower: Int {
        set {
            power += newValue
        }
        get {
            power
        }
    }
    
    func carInformation() {
        print("its a \(brand) with \(horsePower) hp")
    }
    
    mutating func changeIsFourWheel() {
        isFourWheel.toggle()
        print("is your car four wheel ? : \(isFourWheel)")
    }
}

var bmw530i = Voiture(brand: "BMW", power: 100)
bmw530i.horsePower = 200
print(bmw530i.horsePower)
print(bmw530i.horsePower)

extension Int {
    mutating func makeMe6() {
        self = 6
    }
}

var niceInt =  12
print(niceInt.makeMe6())

extension Collection {
    var isNotEmpty: Bool {
        isEmpty == false
    }
}

var logo = ["a","b","c"]

logo.isEmpty ? print("YES") : print("NO")




                                                  
                                                  
                                                  



