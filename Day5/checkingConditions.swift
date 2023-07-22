import Cocoa

// Programs very often make choices. One of the ways Swift does this is
// with "if" statements;
// if someCondition {
//      print("Do something")  
// }

// You can put as much code in an if statement as you want.

let score = 85
if score > 80 {
    print("Great Job!")
    print() 
}

// -------------------------------------------------------------------
// ">"" is a comparison operator, comparing two things and it returns a
// boolean result. "<", ">=", "<=" are also comparison operators.

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going, we don't need roads.")
    print() 
}

if percentage < 85 {
    print("Sorry, you failed the test") 
    print() 
}

if age >= 18 {
    print("You're elgible to vote.")
    print() 
}

// -------------------------------------------------------------------
// If the user entered a name that comes after their friend's name
// alphabetically, put the friend's name first:
let ourName = "Dave Lister"
let friendName = "Arnold Rimmer"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName)")
    print() 
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
    print() 
}

// if the string inside ourName comes before the string inside friendName
// when sorted alphabetiicaly, it prints ourName first then friendName, as
// planned.

// -------------------------------------------------------------------
// if adding a number to an array makes it contain more than 3 items, 
// remove the oldest one. You can use .append(), .count, and .remove(at: ):

// Make an array of 3 numbers
var numbers = [1 ,2, 3]

// Add a 4th number
numbers.append(4)

// If we have over 3 items, remove the oldest number
if numbers.count > 3 {
    numbers.remove(at: 0)
}

// Display the result
print(numbers) 
print() 

// -------------------------------------------------------------------
// if the user was asked to enter their name and typed nothing at all, give
// them a default name of "Anonymous." Use ==, and !=

// create a username variable
var username = "taylorswift13"

// if username contains an empty string, make it equal to Anonymous
if username == "" {
    username = "Anonymous"
}

// print a welcome message 
print("Welcome, \(username)!")

// Note that "" is an empty string.
// There are other ways to this, with one of the ways being comparing the count
// of the string: if the count is zero, it's an empty string:
if username.count == 0 {
    username = "Anonymous"

}

// Comparing the number of letters may be fast in other languages, but not in
// Swfit. it will count each letter one by one as it doesn't just store its length
// separetly from the string.
// So the check at "count == 0" will make Swift go through all characters in a string,
// even if just needs one character to know the result.

// introducing ".isEmpty", which will send back true if nothing is inside:
if username.isEmpty {
    username = "Anonymous"
}


// Examples:
let firstName = "Paul"
let secondName = "Sophie"

let firstAge = 40
let secondAge = 10

print(firstName == secondName)
print(firstName != secondName)
print(firstName < secondName)
print(firstName >= secondName)
print() 

print(firstAge == secondAge)
print(firstAge != secondAge)
print(firstAge < secondAge)
print(firstAge >= secondAge)
print()

// with enum:
enum Sizes: Comparable {
    case small
    case medium
    case large
}

let first = Sizes.small
let second = Sizes.large
print(first < second) // returns true because small comes before large
