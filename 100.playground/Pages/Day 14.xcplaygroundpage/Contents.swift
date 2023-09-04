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

