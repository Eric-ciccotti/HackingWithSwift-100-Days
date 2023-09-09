//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

let bonoboArray: [Int]? = [5,4,3]

func exodus(coolArrays: [Int]?) -> Int { coolArrays?.randomElement() ?? Int.random(in: 1...100)}

exodus(coolArrays: nil)
exodus(coolArrays: bonoboArray)
