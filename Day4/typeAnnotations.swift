import Cocoa

// Swift is able to figure out what type of data a constant or variable holds
// based on what we assign to it. However there may be times we don't want to
// assign a value immediately, or mayhaps we want to override Swift's choice
// of type. That's where annotations come in.

// So far, we've been making constants like this:
// let surname = "Lasso"
// var score = 0

// This uses type inference: Swift infers that surename is a "String" because
// we're assigning text to it, and then infers that score is an integer
// because we assigned a number to it.

// Type annotations let us be explicit about what data types we want:
let surename: String = "Lasso"
var score: Int = 0

// This is being explicit: surename MUST be a String, and score
// MUST be an integer.

var scores: Double = 0

// Without the "Double" part, Swift would infer that 0 would be an integer.

// As a recap here are the data types we've learned so far:
// Strings hold text:
let playerName: String = "Roy"

// Int holds whole numbers:
var luckyNumber: Int = 13

// Double holds decimal numbers:
let pi: Double = 3.141

// Bool holds either true or false:
var isAuthenticated: Bool = true

// Array holds lots of different values, all in the order you add them. This
// must be specialized, such as [String]:
var albums: [String] = ["Red", "Fearless"]

// Dictionary holds lots of different values, where you get to decide how data
// should be accessed. This MUST be specialized, such as [String: Int]:
var user: [String: String] = ["id": "@twostraws"]

// Set holds lots of different values, but stores them in an order that's
// optimized for chechkin what it contains. This MUST be specialied, such
// as "Set<String>":
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])

// Knowing all these types is important for times when you don't want to provide
// initial values:
var teams: [String] = [String]() 

// Again, type annotation isn't required, but you still need to know that an array
// of strings is written as "[String]" so that you can make the thing. Remember 
// you need to add the open and close parentheses when making empty arrays, 
// dictionaries, and sets, because it's where Swift allows us to customize the way
// they are created.

// Some people prefer to use type annotation:
var cities: [String] = []

// Others prefer to use type inference as much as possible:
var clues = [String]()

// There are also enums, which are different because they let us create new types
// of our own, such as an enum containing days of the week, or an enum containing
// which UI theme the user wants:

// Values of an enum have the same type as the enum itself, so we could write 
// something like this:
enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light
// this allows Swift to remove the enum name for future assignments, so we can
// write "style = .dark" - it knows any new value for "style" must be some kind 
// UIStyle.

// When it comes to knowing when you should use type annotations, it's preferred
// to use type inference as much as possible, with the most common exception being 
// constants that don't have a value yet:

let username: String 

// lots of complex logic

username = "@twostraws"

// lots more complex logic

print(username) 

// if username didn't have a value when we ran it, then it would refuse to run.
// The golden rule is that Swift MUST know at all times what data types your
// constants and variables contain.