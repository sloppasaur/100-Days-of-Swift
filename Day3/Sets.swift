import Cocoa

// So far we've learned about two ways to collect data in Swift:
// arrays and dictionaries. We're about to learn about "sets,"
// a third way of collecting data. Sets are similar to arrays,
// except you can't duplicate items and they don't store their 
// items in a particular order

// Creating a set works like creating an array. There are two important
// differences, though:
let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", 
                            "Samuel L Jackson"])

// This creates an array first followed by putting that array into a "set"
print(people) 
print() 

// When displaying the data, you might see the names in their original order,
// or you might not. Sets do not care what order its items come in.

// The second important differnce is when you add items:
var actors = Set<String>()
actors.insert("Denzel Washington")
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")
actors.insert("Samuel L Jackson")

print(actors) 
print() 

// notice how "insert()" is being used instead "append()". We aren't adding
// items to the end of the list, because a set where will store the items
// in whatever order it wants to.

// when comparing Arrays to Sets, searching through a set instead of an array
// would be so much faster.
// Most of the time arrays will be used. But there will be times a set is the
// way to go.

// Tip: alongside "contains()", .count and .sorted() can also be used