import Cocoa 

// the last way to check conditions in swift is the ternary operator,
// which works with three pieces of input. it lets us check a condition
// and return one of two values: if the condition is true and if and 
// something is false.

let age = 18
let canVote = age >= 18 ? "Yes" : "No"

// When the code runs, canVote will be set to "Yes" because age is set to 18
// think the layout for a ternary operator to be: What, True, False.
// What is the condition
// true is if the condition is true
// false if the condition is false

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon") 

// it would look like this in an if else statement:
if hour < 12 {
    print("It's before noon")
} else {
    print("It's after noon")
}

// Here's an example with an array:
let names = ["Jayne", "Kaylee", "Mal"]   
let crewCount = names.isEmpty ? "No one" : "\(names.count) people"
print(crewCount)

// Here's an example with enum and the usage of ==
enum Theme {
    case light, dark
}

let theme = Theme.dark

let background = theme == .dark ? "black" : "white"
print(background)

// the what is the theme == dark
// true is black
// false is white