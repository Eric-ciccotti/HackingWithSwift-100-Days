import Cocoa

//closure day


let showRandomDogNameAndAge = {(names: [String], ages: [Int]) -> String in
    let getDog: String = names.randomElement()!
    let getAge: Int = ages.randomElement()!
    return "Hello my name is \(getDog) and I'm \(getAge)"
}


var myCoolTupleWithName = (dogNames : ["BobbyDoggy","JohnsonOwafOwaf","BillyBob"] , dogAges : [12, 54, 22, 11, 5, 9])
print(showRandomDogNameAndAge(myCoolTupleWithName.dogNames, myCoolTupleWithName.dogAges))

let smallClosure = {
    print("hey I am a small closure which do nothing fancy :o")
}

smallClosure()

let dogNameInUppercase = myCoolTupleWithName.dogNames.map { $0.uppercased() }
print(dogNameInUppercase)

var swift = {
    print("Cool - I can use closures!")
}
func writeCode(using language: () -> Void, usingTwo age: () -> Void) {
    language()
    print("That'll be eleventy billion dollars, please.")
    age()
}


//trailling closure with multiple parameter
writeCode {
    print("some code")
} usingTwo: {
    for _ in 1...10 {
        print("go go go ten times !!!")
    }
}

//2
var playWithDog = {
    return "this is a string"
}
func play(using playType: () -> String) -> Void {
    print("Let's play a game")
    playType()
}

play(using: playWithDog)

play { playWithDog() }

///
let resignation = { (name: String) in
    print("Dear \(name), I'm outta here!")
}
func printDocument(contents: () -> Void) {
    print("Connecting to printer...")
    print("Sending document...")
    contents()
}
printDocument(contents: { resignation("yeah baybay")})
///
///
/// trailing closure
func phoneFriend(conversation: () -> Void) {
print("Calling 555-1234...")
conversation()
}

phoneFriend {
    print("Hello!")
    print("Hello! man")
}
///
///
func doTricks(_ tricks: () -> Void) {
print("Start recording now!")
tricks()
print("Did you get all that?")
}

doTricks {
    print("magik")
}

///
func goOnVacation(to destination: String, notMendatoryLabel activities: () -> Void) {
    print("Packing bags...")
    print("Getting on plane to \(destination)...")
    activities()
    print("Time to go home!")
}

goOnVacation(to: "Mexico") {
    print("Go sightseeing")
    print("Relax in sun")
    print("Go hiking")
}

