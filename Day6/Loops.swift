import Cocoa

// Computers are great at doing repetitive work:
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os)")
    print() 

}

// os is called the loop variable; it exists only inside the loop body.
// os is the placeholder for the loop. It can be any other name:
for names in platforms {
    print("Swift works great on \(names)")
    print() 
}

// or 

for rubberChicken in platforms {
    print("Swift works great on \(rubberChicken)")
    print() 
}

// You can also loop over a fixed range of numbers:
for i in 1 ... 12 {
    print("5 x \(i) is \(5 * i)")
    print() 
}

// 1 ... 12 is a range, meaning all numbers between 1 and 12
// You can also put loops inside loops, also known as nested loops:
for i in 1...12 {
    print("The \(i) times table:")

    for j in 1...12 {
        print("  \(j) x \(i) is \(j * i)")
    }

    print()
}

// using "..<" will exclude the final number:
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

// There may be times where you don't want "i" or "j", in cases like that you
// can just use an underscore:
var lyric = "Haters gonna"

for _ in 1 ... 5 {
    lyric += " hate"
}

print(lyric)
