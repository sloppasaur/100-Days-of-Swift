import Cocoa

// When working with 3.1, 5.56, 3.14592654, you're working with decimals
// these are called floating point numbers

let number = 0.1 + 0.2
print(number) // prints 0.30000000000000004 becuase it's complex

// floating point numbers start a Double, or
// "double-precision floating-point number"
// Doubles can store absolutely massive numbers.

// Swift considers decimals to be wholly different to integers,
// meaning they can't be mixed together:

// This will produce an error:
let a = 1
let b = 2.0
// let c = a + b

// If you want to add the code, you must tell Swift to
// explicitly treat Double b as an Integer:
let c = a + Int(b)
print(c)
print()

// Alternatively, you can make the int a Double
let d = Double(a) + b
print(d)
print()

// With type safety, once Swift decided what type a constant or variable
// holds, it must always hold the same data type.

// this code is fine:
var name = "Nicolas Cage"
name = "John Travolta"
print(name)
print()

// But this code does not:
// var name = "Nicolas Cage"
// name = 57

// Decimal numbers have the same range of opeators and compound assignment
// operators as integers
var rating = 5.0
rating *= 2
print(rating)
print()
