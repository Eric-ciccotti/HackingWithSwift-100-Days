import Cocoa

// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

let firstName = "Sophia"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

// Display the result
print(numbers)

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)

enum Avions {
    case Boeing
    case Bombarder
    case Concorde
}

var avionSelected = Avions.Boeing

if avionSelected == .Boeing || avionSelected == .Bombarder {
    print("avion de guerre")
} else {
    print("avion voyage")
}

enum CarBrands {
    case Bmw
    case Nissan
    case Porsche
}

var CarBrand = CarBrands.Bmw

switch CarBrand {
case .Bmw :
    print("assez cher")
case .Nissan :
    print("normal")
case .Porsche :
    print("haut de gamme")
}


