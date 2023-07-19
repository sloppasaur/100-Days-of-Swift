import Cocoa

// The fourth datatype being learned today is called a Boolean
// Booleans will only store true or false values.

let filename = "paris.jpg"
print(filename.hasSuffix(".jpg"))

let number = 120
print(number.isMultiple(of: 3))

// both hasSuffix() and isMuliple(of:) return a value based on 
// their check. If the value is true, then it returns true.

let goodDogs = true
let gameOver = false

// You can also assign a Boolean's initial value from some other
// as long as ultimately it's either true or false
let isMuliple = 120.isMultiple(of: 3)

// Unlike the other Datatypes learned so far, Booleans do not have
// arithmetic operators, such as "+" and "-". They do have a special
// operator "!", or "not".
var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
print()
isAuthenticated = !isAuthenticated
print(isAuthenticated)
print()