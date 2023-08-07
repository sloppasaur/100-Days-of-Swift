import Cocoa 

// the last closure related topic gone over is how to write functions that accept
// other functions as parameters. This is important for closures because of trailing
// closure syntax, but it's a useful skill to have regardless

// Here's a previous example:
func greetUser() {
    print("Hi there!")
}

greetUser() 

var greetCopy: () -> Void = greetUser 
greetCopy() 

// the type annotation in there is intentional, because that's what's used when
// specifying functions as parameters: We tell Swift what parameters the function
// accepts, as well its return type.

// Here's a function that generates an array of integers by repeating a function a certain
// number of times:
func makeArray(size: Int, using generator: () -> Int) -> [Int] {
    var numbers = [Int]()

    for _ in 0 ..< size {
        let newNumber = generator() 
        numbers.append(newNumber)
    }

    return numbers 
}

// Here's the breakdown of the above code:
/*
1. The function is called makeArray(). It takes two parameters, on of which
    is the number of integers we want, and also returns an array of integers.
2. The seconds parameters is a function. This accepts no parameters itself, but will
    return one integer every time it's called.
3. Inside makeArray() we create a new empty array of integers, then loop as many times
    as requested.
4. Each time the loop goes around we cqall the generator function that was passed in as a parameter.
    This will return one new integer, so we put that into the numbers array.
5. Finally the finished array is returned. 
*/

// the body of makeArray() is mostyly straightforward: repeatedly call a function to generate
// an integer, adding each value to an array, then send it back.

// The complex part is the very first line:
// func makeArray(size: int, using generator: () -> Int) -> Int) -> [Int] {}

// We have two sets of parentheses and two sets of return types:
// Broken down:
/*
1. We're creating a new function.
2. The function is called makeArray().
3. The first parameter is an integer called size.
4. The second parameter is a function called generator, which itself accepts no parameters and 
    returns an integer
5. The whole thing- makeArray() - returns an array of integers.
*/

// What results is the ability to make arbitrary-sized integer arrays, passing in a function that
// should be used to generate each number:
let rolls = makeArray(size: 50) {
    Int.random(in: 1 ... 20)

}

print(rolls) 

// Remember this same functionality works with dedicated functions too:
func generateNumber() -> Int {
    Int.random(in: 1 ... 20)
}

let newRolls = makeArray(size: 50, using: generateNumber)
print(newRolls) 

// You can make your function accept multiple function parameters if you want, in which case you can
// specify multiple trailing closures. The syntax here is very common in SwiftUI
// Here's a function that accepts three function parameters, each of which accept no parameters and
// return nothing:
func doImportantWork(first: () -> Void, second: () -> Void, third: () -> Void) {
    print("About to start first work")
    first()
    print("About to start second work")
    second() 
    print("About to start third work")
    third()
    print("Done!")
}

// When it comes to calling the function, you end the brace from the previous closure, then
// write the external parameter name anda colon, then start another brace.

doImportantWork{ 
    print("This is the first work")
} second: {
    print("This is the second work")
} third: {
    print("This is the third work")
}

// This isn't as uncommon as one might expect. For example, making a seciont of content
// in SwfitUI is done with three trailing closures: one for the content itself, one for 
// a ehad to be put above, and one for a footer to be put below.