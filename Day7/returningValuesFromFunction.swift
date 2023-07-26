import Cocoa 

// Now that we know how to create functions, we can learn how functions send data
// back:

// In the square root function "sqrt(Double)", the function accepts a parameter and returns
// a value:
let root = sqrt(169)
print(root)
print() 

// to return a value of a function, you need to do two things:
// 1. Write an arrow then a data type before your functions opening brace,
//      which tells Swift what kind of data will be sent back.
// 2. Use the return keyword to send back your data

func rollDice() -> Int {
    return Int.random(in: 1 ... 6)
}

let result = rollDice()
print("Rolling Dice...")
print(result)
print() 

// The function returns an integer:
// Important: When you say your function will return an Int, Swift will make sure it always returns
// an Int – you can’t forget to send back a value, because your code won’t build.

/*
Let’s try a more complex example: do two strings contain the same letters, 
regardless of their order? This function should accept two string parameters, 
and return true if their letters are the same – so, “abc” and “cab” should return 
true because they both contain one “a”, one “b”, and one “c”.
*/

func areLettersIdentical(string1: String, string2: String) -> Bool {
    let first = string1.sorted() 
    let second = string2.sorted() 
    return first == second
}

// This creates a function called areLettersIdentical()
// The function accepts two paratmeters,
// The function will return a Bool
// Inside the function body, we sort both strings and then use "==" to 
// compare the strings and see if they're the same.

// A more advanced way to do this is to just sort the parameters outright and compare them
// in the same line:
func areLettersIdenticalBetter(string1: String, string2: String) -> Bool {
    return string1.sorted() == string2.sorted() 
}

// When a function only has one line of code, we can remove the return keyword entirely:
func areLettersIdenticalBest(string1: String, string2: String) -> Bool {
    string1.sorted() == string2.sorted() 
}

// Here's the example with the rollDice() function:
func rollDiceBetter() -> Int {
    Int.random(in: 1 ... 6)
}

// Here's an example using the Pythagorean Theorm:
func pythagoras(a: Double, b: Double) -> Double {
    sqrt((a * a) + (b * b))
}


let c = pythagoras(a: 3, b: 4)
print("3^2 * 4^2 = \(c)^2")

// If your function doesn't return a value, you can use return to exit a function
// early.