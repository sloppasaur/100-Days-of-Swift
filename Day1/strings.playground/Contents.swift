import Cocoa

// When you assign text to a constant or a variable, this creates a string
let actor = "Denzel Washington"

// You can use punctuation, emoji and other characters:
let filename = "paris.jpg"
let result = "⭐️ You win! ⭐️"

let quote = "Then he tapped a sign saying \"Believe\" and walked away."

// Swift does not like line breaks in strings:
// let movie = "A day in
// the life of an
// Apple engineer."

// The code above in comments isn't allowed.
// """ Allows for the use of a string across multiple lines:
let movie = """
A day in
the life of an
Apple engineer
""" // The final three quotes must be on a line by themselves
print(movie)

// .count will read the length of a string:
print(actor.count)

let nameLength = actor.count
print(nameLength)

// uppercased() makes the string in the parenthesis well, UPPERCASED:
print(result.uppercased())

// .hasPrefix() lets us know if a string starts with some letters of our choosing:
print(movie.hasPrefix("A day"))

// .hasSuffix() lets us know if a string ends with some text:
print(filename.hasSuffix(".jpg"))

