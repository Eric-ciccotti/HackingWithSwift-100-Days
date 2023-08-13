import Cocoa

//closure day


let showRandomDogName = {() -> String in
    let dogNames: [String] = ["BobbyDoggy","JohnsonOwafOwaf","BillyBob"]
    var getDog: String = dogNames.randomElement()!
    return getDog
}

print(showRandomDogName())
