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
