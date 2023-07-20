import Cocoa

// To store a lot of data in a single place, such as similar data
// or data that relates to each other, we store them in an Array.
// Arrays are their own data type, like String, Int, and Double,
// but rather than just holding one of a type, they can hold
// multiple:
var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

// When it comes to reading values from an array, we ask for its values
// by the position they appear in. Positions of an item in an array
// are called its *index*. An Item's index starts at ZERO.
print(beatles[0])
print(numbers[1])
print(temperatures[2])
print()

// Make sure an item exists at the index you're asking for if you don't
// want an error!

// If your array is a variable, it is possible to add stuff to it.
// This can be done with the append() method:
beatles.append("Adrian")
print(beatles)
print() 

// There's nothing stopping you from adding items more than once:
beatles.append("Allen")
beatles.append("Adrian")
beatles.append("Novall")
beatles.append("Vivian")
print(beatles) 
print() 

// Keep in mind when adding an item to an array, it must be the same
// datatype that the array already consists of.
// temperatures.append("Chris") would not be allowed.

// This also applies when reading data out of the array. You can't
// combine data:
// let firstBeatle = beatles[0]
// let firstNumber = numbers[0]
// let notAllowed = firstBeatle + firstNumber

// Creating an empty array then adding to it:
var scores = Array<Int>() 
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])
print()

// Arrays are so common in Swift that there's a special way to create
// them: rather than "Array<String>," you can use [String]:
// var albums = [String]()
// albums.append("Folklore")
// albums.append("Fearless")
// albums.append("Red")
// print(albums)
// print() 

// Swift's type safety means that it must always know what type of data an
// array is storing. As long you provide some initial values for the Array,
// Swift can figure out what type the array is instead of having to be 
// explicit by saying "albums" is an "Array<String>"
var albums = ["Folklore"]
albums.append("Fearless")
albums.append("Red")
print(albums) 
print() 

// You can use ".count" to read how many items are in array, just like you could
// with strings
print(albums.count)

// It is possilbe to remove items from an array; using "remove(at:)" will remove
// an item at a specific index, and "removeAll()" will remove everything:
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
print()

characters.remove(at: 2)
print(characters.count)
print() 

characters.removeAll()
print(characters.count)
print()

// Finally "reversed" allows you to reverse an array:
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed() 
print(reversedPresidents)
print()

// When an Array is reversed, Swift won't do the work of reversing the items;
// but will tell itself that you want the items reversed. Don't be surprised
// to see that reversedPresidents it not just an array when printed

// Tip: "sorted()" puts a string's letters into alphabetical order, making
// something like "swift" into "fistw".