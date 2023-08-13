import Cocoa

enum errorType : Error {
    case outOfBounds, noRoot
}

func squareRoot(_ n: Int) throws -> Int {
    if (n < 1 || n > 10_000) {
        throw errorType.outOfBounds
    }
    
    for i in 1...100 {
        if n == i * i {
            return i
        }
    }
    
    throw errorType.noRoot
}


do {
    try print(squareRoot(-5))
} catch errorType.outOfBounds {
    print("oops out of bound...")
} catch errorType.noRoot {
    print("oops no root !")
} catch {
    print("Oops ! : \(error)")
}
  
        
        
    
    
    
  

