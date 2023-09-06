import Foundation

var username : String? = nil
username = "jo"

print(username)

if let username {
    print("jo is here")
} else {
    print("no jo bro")
}


var emptyArray = [Int]()
var optionalArray : [Int]? = nil
///
func square(number: Int) -> Int {
    number * number
}

var number: Int? = nil
number = 12


if let unwrappedNumber = number {
    print(square(number: unwrappedNumber))
}

///


let opposites = [
    "Mario": "Wario",
    "Luigi": "Waluigi"
]

let peachOpposite = opposites["Peach"]
if let marioOpposite = opposites["Mario"] {
    print("Mario's opposite is \(marioOpposite)")
}

//affiche rien
var name: String? = nil

//ha ! name est égale à quelque chose on va unwrap name
name = "bollux"

if let unwrapz = name {
    print("my name is \(unwrapz) !")
}


//
let favoriteTennisPlayer: String? = "Andy Murray"
if let player = favoriteTennisPlayer {
    print("Let's watch \(player)'s highlights video on YouTube.")
}


//si apiCal est néant => le guard let va printé le message d'erreur
//si apiCal n'est pas néant => on initialise la variabler api dans constante call et on print un message
var apiCal: Bool? = nil
apiCal = true

func isApiWork(of api: Bool?) -> Void {
    guard let call = api else {
        print("API ERROR : not cal")
        return
    }
    print("API CALL : ok")
}

isApiWork(of: apiCal)


///
func getMeaningOfLife() -> Int? {
    42
}

func printMeaningOfLife() {
    if let name = getMeaningOfLife() {
        print("ho yea \(name)")
    }
}

printMeaningOfLife()

func printMeaningOfLifeooo() {
    guard let name = getMeaningOfLife() else {
        return
    }

    print(name)
}

printMeaningOfLifeooo()

///
func double(_ number: Int?) -> Int? {
    guard let number = number else {
        return nil
    }
    return number * 2
}
let input = 5

double(input)

if let doubled = double(input) {
    print("\(input) doubled is \(doubled).")
}

///
///
func uppercase(string: String?) -> String? {
    guard let string = string else {
        return nil
    }
    return string.uppercased()
}
if let result = uppercase(string: "Hello") {
    print(result)
}

///
///


              
              
              
              
              
              
              

