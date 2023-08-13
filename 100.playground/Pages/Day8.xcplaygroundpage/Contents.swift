import Cocoa

enum ArrayError: Error {
    case negateIndex
}
func readItem(_ index: Int, from array: [String]) throws -> String {
    if index < 0 {
        throw ArrayError.negateIndex
    }
    return array[index]
}

var colours : [String] = ["red","blue","green"]

try readItem(1, from: colours)

enum typeNameError: Error {
    case notAString
}

//test throw error and do catch block
func stringChecker(value: Any) throws {
    if !(value is String) {
        throw typeNameError.notAString
    } else {
        print("yes nice string!")
    }
}


func typeYourName(_ anyValue: Any) throws {
    do {
        try stringChecker(value: anyValue)
    } catch{
        print("Oops error: \(error)")
    }
}

try typeYourName(123)
