import Cocoa

// When you've written code you really like and want to use again and again, 
// you should consider putting it into a function. Functions are just chunks
// of code you've split from the rest of your program with a given name to be
// referred to easily:
func showWelcome() {
    print("Welcome to my app!")
    print("By default, this prints out a conversion")
    print("chart from centimeters to inches, but you")
    print("can also set a custom range if you want.")
}

// The code abopve starts with the "func" keyword, which marks the start of a 
// function.
// the function was named "showWelcome()," but a function can be named however
// you want it to. Just try to keep the names memorable - printInstructions(), 
// displayHelp()

showWelcome() 

// the () are used with functions; they are used when you create the function,
// and also when you call the function.
// isMultiple(of: ), and .random() are both functions

/*
func printTimesTables(number: Int) {
    for i in 1 ... 12 {
        print("\(i) x \(number) is \(i * number)")
        print() 
    }
}


printTimesTables(number: 5)
*/

// the "number: Int" inside the parentheses is a parameter, which is our customization
// point. However, the number passed must be an integer. Naming parameters becomes
// even more important when you have multiple parameters; if we wanted to customize
// how high our mutiplication tables went, we might make the end of our range to be 
// a second parameter
func printTimesTables(number: Int, end: Int) {
    for i in 1 ... end {
        print("\(i) x \(number) is \(i * number)")
    }
}
print() 

printTimesTables(number: 5, end: 20)

// make sure that when you pass multiple parameters into a function, that the
// parameters match up

func printTimesTablesArray(numbers: [Int]) {
    for number in numbers {
        for i in 1 ... 12 {
                print("\(number) x \(i) is \(i * number)")
        }
    }
}

printTimesTablesArray(numbers: [1, 2, 3])