import Cocoa

// Swift gives us two ways to combine strings together:
// One of the ways is to use the "+" operator:
let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart
print(greeting)
print()

// You can do this as many times as you need to
let people = "Haters"
let action = "hate"
let lyric = people + " gonna " + action
print(lyric)
print()

// Using "+" to join strings and using "+" to add Ints and 
// Doubles together is called Overloading:
//      The ability for one operator to mean different things
//      depending on how it's used.

// Using "+" to put strings together is great for small strings,
// but it shouldn't be done too much. Here's an example:
let luggageCode = "1" + "2" + "3" + "4" + "5"

// Swift won't combine this all in one go; rather, it will join
// "1" and "2", and then join "12" with "3", then "123" with "4",
// and finally "1234" with "5". But this is all done separately.

// The better way to do this is using *String Interpolation*
// This will allow us to efficiently create strings from other 
// strings, and integers, and decimals, and more!

// Remember the line we used before.
let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// Something very similar is used with string interpolation:
// use backslash inside the string, then place the name of the variable
// or constant inside the parenthesis:
let name = "Taylor"
let yearBorn = 1989
let message = "My name is \(name), and I was born in \(yearBorn)!"
print(message)
print()

// String interpolation is much more effiecient than using "+" to join
// strings one by one, but you can pull in other datatypes as well with
// no extra work!
let number = 11
// let missionMessage = "Apollo " + String(number) + " landed on the moon."
// it is still faster and easier to use string interpolation:
let missionMessage = "Apollo \(number) landed on the moon."
print(missionMessage)
print()

// You can also put calculations inside stringer interpolations:
print("5 x 5 is \(5 * 5)")
print()