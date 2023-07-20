import Cocoa

// Arrays are great for similar datatypes, or having data that has a 
// particular order, such as days of the week or temperatures for a 
// city. However, accessing data in an array can be very annoying,
// sometimes even dangerous:
var employee = ["Taylor Swift", "Singer", "Nashville"]
print("Name: \(employee[0])")
print("Job Title: \(employee[1])")
print("Location: \(employee[2])")
print() 

// This brings some problems: For example, you can't really be sure that 
// employee[2] is their location - maybe it's their password. There's
// no guarantee that item 2 is even there!
// print("Name: \(employee[0])")
// employee.remove(at: 1)
// print("Job Title: \(employee[1])")
// print("Location: \(employee[2])")

// This now prints "Nashville" as the job title, which is wrong, and will
// cause the code to crash when employee[2] is read, which is bad
// The solution to our problems are "Dictionaries." Dictionaries
// let us decide where items should be stored:
let employee2 = [
    "name" : "Taylor Swift",
    "job" : "Singer",
    "location" : "Nashville"
]

// The information is pretty clear: Swift will calls strings on the left,
// also known as "keys" to the dictionary, and the values are on the right
// of the colon.
print(employee2["name"])
print(employee2["job"])
print(employee2["location"])
print() 

// Notice the warnings that pop up: "Expression implicity coerced from 
// 'String?' to 'Any.'" Worse, the output from out code prints 
// Optional("Taylor Swift") rather than just Taylor Swift.
// This is because the values assigned to a key may not be there
// when we call them. This can be addressed by adding a default value:
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])
print() 

let unknown = "Unknown"

// Dictionaries can havbe other datatypes for either of them:
let hasGraduated = [
    "Eric" : false,
    "Maeve" : true,
    "Otis" : false
]

let olympics = [
    2012 : "London",
    2016 : "Rio de Janeiro",
    2021 : "Tokyo"
]
print(olympics[2012, default: unknown])
print()

// An empty Dictionary can be created using whetever explicit types you want
// to store, then set keys one by one:
var heights = [String : Int]() 
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

// Each dictionary item myust exist at one specific key: dictionaries
// do not allow duplicate keys to exist. If you set a value for a key that
// that already exists, Swift will overwrite the original with the new value:
var archEnemies = [String : String]() 
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"
print(archEnemies["Batman", default: "Unknown"])
print()

// This will replace Batman's arch nemesis
archEnemies["Batman"] = "Penguin"
print(archEnemies["Batman", default: unknown])
print() 

// Just like arrays and other datatypes we've seen so far, dictionaries
// come with some useful functionality: ".count" and "removeAll()" exist
// and work like they do for arrays.

// Remember that you can't be guaranteed that a key in a ditionary
// exists: Reading a value from a dictionary might send back nothing,
// meaning the key may not exist at all!