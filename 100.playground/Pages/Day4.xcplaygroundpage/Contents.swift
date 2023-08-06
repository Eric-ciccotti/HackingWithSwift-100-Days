import Cocoa

var fruits: [String] = ["orange","banana","kiwi","kiwi","orange"]
var uniqueItemsInFruits = Set<String>(fruits)

print("Number of items in fruits's array = \(fruits.count)")
print("There is \(uniqueItemsInFruits.count) unique items in this array")
