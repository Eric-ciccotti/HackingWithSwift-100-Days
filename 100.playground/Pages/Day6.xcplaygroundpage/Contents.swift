import Cocoa

var monsters = ["pig","trooper","soldier","machine gun"]

for monster in monsters {
    print("I'm a \(monster)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }

    print()
}
///
let names = ["Piper", "Alex", "Suzanne", "Gloria"]
print(names[0])
print(names[1...3])
print(names[2...])

let num = 1..<4
for _ in num {
    print("yo")
}


///
var numbers = [1, 2, 3, 4, 5, 6]
for number in numbers {
    if number % 2 == 0 {
        print(number)
    }
}

///
///
let colors = ["Red", "Green", "Blue", "Orange", "Yellow"]
var colorCounter = 0
while colorCounter < 5 {
    print("\(colors[colorCounter]) is a popular color. counter = \(colorCounter)")
    colorCounter += 1
}
////
var counter = 2
while counter < 64 {
    print("\(counter) is a power of 2.")
    counter *= 2
}
///
var page: Int = 0
while page <= 5 {
    page += 1
    print("I'm reading page \(page).")
}
///
var cats: Int = 0
while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}
///
var number: Int = 10
while number > 0 {
    number -= 2
    if number % 2 == 0 {
        print("\(number) is an even number.")
    }
}
///
var averageScore = 2.5
while averageScore < 15.0 {
    averageScore += 2.5
    print("The average score is \(averageScore)")
}



var numbersArrays = [Int]()
for i in 1...10 {
    if(i % 2 != 0) {
        continue
    }
        print("\(i) est un chiffre pair")
}

///
///
let options = ["up", "down", "left", "right","coolleft"]
let secretCombination = ["up", "up", "right",]


outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("[\(option1),\(option2),\(option3)]")
            let attempt = [option1, option3, option2]

            if attempt == secretCombination {
                print("The combination is \(attempt)!")
                break outerLoop
            }
        }
    }
}

///
for name in ["John", "Paul", "George"] {
    print("Welcome, \(name)!")
}

var password = "1"
    password += "1"
print(password)

for i in 1...15 {
    if i % 3 == 0 {
        if i % 5 == 0 {
            print("\(i) is a multiple of both 3 and 5.")
        }
    }
}

///
var qcounter: Int = 0
while qcounter < 100 {
    qcounter += 10
    print("Number \(qcounter) , module = \(qcounter % 10)")
    if qcounter % 10 == 5 {
        print("Matching number found, \(qcounter)")
    }
}
