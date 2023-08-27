import Cocoa

class Animal {
    var legs: Int
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog : Animal {
    func speak() {
        print("wouaf wouaf !!")
    }
}

class Cat : Animal {
    var isTame: Bool
    func speak() {
        print("miaou miaou !!")
    }
    init(legs: Int, isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
    }
}

class Corgi : Dog {
    override func speak() {
        print("corgin corgin corgi..!")
    }
}

class Poodle : Dog {
    override func speak() {
        print("huaf huaf huaf...!")
    }
}

class Persian : Cat {
    override func speak() {
        print("miiiou miiiou..!")
    }
}

class Lion : Cat {
    override func speak() {
        print("wraaaah...wrahhh !")
    }
}

var jonbig = Lion(legs: 4, isTame: false)
jonbig.speak()
let persia = Persian(legs: 4, isTame: true)
persia.speak()
