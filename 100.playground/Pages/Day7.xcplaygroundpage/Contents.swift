import Cocoa

func multiPrint(sentence: String, times: Int) {
    for _ in 1...times {
        print("\(sentence)")
    }
}

multiPrint(sentence: "Jony", times: 5)
