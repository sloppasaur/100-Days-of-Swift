import Cocoa

// Working with whole numbers in Swift is known as integers:
var score = 10
print(reallyBig)
print()

// integers can be in the quintillions, both positive
// and negative:
var reallyBig = 100000000
print(reallyBig)
print()

// you can use "_" to break up numbers:
reallyBig = 100_000_000
print(reallyBig)
print()

// Note that Swift doesn't actually care about "_"
// So you can put them in however you like:
reallyBig = 1_00__00____00
print(reallyBig)


// you can create integers from other integers:
// "+" for addition
let higherScore = score + 10
print("higherScore = ", higherScore)
print()

// "-" for subtraction
let lowerScore = score - 2
print("lowerScore = ", lowerScore)
print()

// "*" for multiplication
let doubledScore = score * 2
print("doubledScore = ", doubledScore)
print()

// "/" for division
let halvedScore = score / 2
print("halvedScore = ", halvedScore)
print()

// counters can be made instead of making new constants
// each time:
var counter = 10
counter = counter + 5
print(counter)
print()

// alternatively, "+=" can be used instead:
counter += 5
print(counter)
print()

counter *= 2
print(counter)
print()

counter -= 10
print(counter)
print()

counter /= 2
print(counter)
print()

// You can use "isMultiple(of:) to find if an integer
// is a multiple of another integer:
let number = 120
print(number.isMultiple(of: 3))
print()

// alternatively,
print(120.isMultiple(of: 3))
print()
