import Foundation

let input = "2"
let number = Int(input) ?? 0
print(number)

var jo: String? = "yo"

func showYourName(name: String?) {
    guard let name = name else {
        print("oops ! no name")
        return
    }
    print("your name is ! \(name)")
}

if let myName = jo {
    print("mmm.. jo has no name")
} else {
    showYourName(name: jo)
}


