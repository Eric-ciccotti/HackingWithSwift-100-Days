import Cocoa

var presidents:[String] = ["Bush", "Obama", "Trump", "Biden"]

var result = Array(presidents.reversed())
print(result)
result.remove(at: 1)
print(result)


let presidentsDictionnary = [
    100 : "clinton",
    200 : "obama",
    300 : "chirac",
]

print(presidentsDictionnary[100, default: "Unknown"])

var numberDictionnary = [Int: String]()
numberDictionnary[1] = "one"
numberDictionnary[2] = "two"

print(numberDictionnary[2, default: "zero"])
print(numberDictionnary[5, default: "zero"])
print("my name is \(presidentsDictionnary[100, default: "deus"])")

let capitals = ["England": "London", "Wales": "Cardiff"]
let scotlandCapital = capitals["test", default: "Red"]

print(scotlandCapital)

var albums = [String: String]()
["Prince": "Purple Rain"]

var tintinArr = [Bool]()
tintinArr.append(true)
tintinArr.append(false)
print(tintinArr)

var actorSet = Set<String>()
actorSet.insert("bonobo jonny")
actorSet.insert("julius wallas")
actorSet.insert("aune")
actorSet.sorted()
print(actorSet)

var bmw = [Int:String]()
bmw = [
    530 : "bon moteur",
    525 : "moyen moteur",
    520 : "de la merde"
]

bmw[550] = "serious moteur"

print(bmw[525, default: "Moteur inconnu"])
bmw.removeValue(forKey: 525)
print(bmw[525, default: "Moteur inconnu"])
print(bmw[550, default: "Moteur inconnu"])

//var setOfBlogCategories: Set<String> = ["Swift", "Debugging", "Xcode", "Workflow", "Optimization"]
//
//let (inserted, memberAfterInsert) = setOfBlogCategories.insert("Swift")
//if !inserted {
//    print("\(memberAfterInsert) already exists")
//}
// Prints: "Swift already exists"

var readings = Set([true, false, true, true])

print(readings)

enum Oiseaux {
    case Perruche, Peroquet, Moineaux
}

var Oiseau = Oiseaux.Moineaux
Oiseau = .Peroquet
Oiseau = .Perruche

var tabVide : [String] = []
var tabVide2 = [String]()
var tabVide3 : [String] = [String]()

var setVide : Set<String> = Set(["jo","ji","ja"])
var legume : Set = [2,3,5]


