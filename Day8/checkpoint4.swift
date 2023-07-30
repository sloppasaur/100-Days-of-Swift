// Name: Nathaniel Barrera
// Date: July 29, 2023

// Write a function that accepts an integer from 1 to 10,000
// and returns the integer square root of the number.
// Catches:
/*
1. You can't use Swifts built-in sqrt() function or similar - you need to find the
    square root function yourself.
2. If the number is less than 1 or greater than 10,000, you should throw an "out of
    bounds" error.
3. You should only consider integer square roots - don't worry about the square root
    of 3 being 1.732, for example.
4. If you can't find the square root, throw an "no root" error
*/

/*
Reminder: The square root of X will be another number that, when multiplied by itself,
    gives X. SO if you were finding the square root of 9, the number would be 3
*/

// create cases for errors
enum squareRootError: Error {
    case tooSmall, tooBig, noRoot
}

// self made square root function that finds the squre root of a given integer, number
func findSquareRoot(_ number: Int = 4) throws -> String {

    // if the number is less than 1, or greater than 10,000 throw an error
    if number < 1 { throw squareRootError.tooSmall }
    if number > 10_000 { throw squareRootError.tooBig }

    // multiply a number by itself to try and find the square root
    for i in 1 ... 100 {
        let squareRoot = i * i

        // return the square root if it's found
        if squareRoot == number {
            return "the Square root of \(number) is \(i)"
        }
    }
    throw squareRootError.noRoot 
}


// number is a constant that varies from 1 - 10,000
let number = 10_001

// try/catch finding the square root of a number
do {
    let result = try findSquareRoot(number)
    print(result)
    print()
}
catch squareRootError.tooSmall {
    print("The number is too small!")
}
catch squareRootError.tooBig {
    print("The number is too big!")
}
catch squareRootError.noRoot {
    print("The square root for \(number) does not exist.")
}
catch {
    print("There was an error.")
}