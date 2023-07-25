import Cocoa 

// Swift gives two ways to skip one or more items in a loop:
// Continue skips the current loop iteration
// break skips all remaining iterations.

// Here's an example with continue:
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd", ]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue 
    }

    print("found picture: \(filename)")
}
print() 

// Here's an example with break:
let number1 = 4
let number2 = 14
var multiples = [Int]() 

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i) 

        if multiples.count == 10 {
            break 
        }
    }
}

print(multiples)  

// This example:
// Create two constant to hold two numbers
// Create an integer array variable that will store common multiples of the two numbers
// Count from 1 - 100,000 assigning each loop variable to i
// If i is a multiple of both the first and second numbers, append it to the integer array.
// Once we hit 10 multiples, we break to exit the loop
// Print the resulting array

// you can label statements:
let options = ["up", "down", "left", "right"]
let secretCombination = ["up", "up", "right"]

outerLoop: for option1 in options {
    for option2 in options {
        for option3 in options {
            print("In loop...")
            let attempt = [option1, option2, option3]

            if attempt == secretCombination {
                print("The combination is \(attempt)")
                break outerLoop
            }
        }
    }
}

// This allows the three loops to stop running once the combination is found.