import Cocoa

func multiPrint(sentence: String, times: Int) {
    for _ in 1...times {
        print("\(sentence)")
    }
}

multiPrint(sentence: "Jony", times: 5)

func isContainSameLetters(a: String, b: String) -> String {
    var itContain = Bool()
    a.sorted()
    b.sorted()
    itContain = a == b && a.count == b.count
    return itContain ? "it contain same letters !" : "it doesn't contain same letters"
}

print(isContainSameLetters(a: "Join", b: "ji"))

func pythagoras(a: Double, b: Double) -> Double {
    return sqrt(a * a + b * b)
}

print(pythagoras(a: 3, b: 4))

//SET
//for speed gain and
//if order doesn't matter and
//can't contain duplicate
let uniqueDukeWeapons = Set<String>(["shotgun","uzi","machine gun","rpg","rpg"])


//dictionnary
// order doesn't matter
let fruits = ["banane":"jaune", "kiwi":"vert", "fraise":"rouge"]

//tuple
//order matter
let playerBar = (myList: "weaponsList", setOfWeapons: [1,2,3], cool: true)
print(playerBar.myList)

//function without extern parameter
//with the _ no need extern parameter
func whoAreYou(_ name: String) -> String {
    "the real \(name)"
}
let myNameIs: String = "Slim Shady !"
let result = whoAreYou(myNameIs)
print(result)

//function with ARGUMENT LABEL
//function with external parameter "foodILove"
//internal parameter "food"
func foodLover(foodIlove food: String) -> String {
    "I like eat \(food)"
}

foodLover(foodIlove: "pizza")


        


