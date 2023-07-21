// Nathaniel Barrera
// July 20, 2023
//
// The goal of this program is to create an erray of strings, and then
// write some code that prints the number of items in the array and also
// the unique number of items in the array:

import Cocoa

// Make an array 
let albums = ["Debut", "Fearless", "Speak Now", "Red", "1989", 
                        "Reputation", "Lover", "Folklore", "Evermore",
                        "Fearless", "Red", "Midnights", "Speak Now"]

// Print the number of items in an array
print(albums.count)

// Print the unique number of items in the array
// Make a set from the array
let uniqueAlbums = Set(albums)

// print the number of items in the Set to reveal the unique items in the 
// array:
print(uniqueAlbums.count) 

