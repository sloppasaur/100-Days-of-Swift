import Cocoa 

// Functions are very powerful. Not only can you call them, pass
// in values, and return data, but you can also assign them to variables, 
// pass functions into functions, and even return functions from functions!

func greetUser() {
    print("Hi there!")
}

greetUser() 

var greetCopy = greetUser 
greetCopy() 

// When copying a function, you don't write the parenthesis after it.

// What if you want to skip creating a separate function, and just assign 
// the functionality directly to a constant or variable?

/*
let sayHello = {
    print("Hi there!")
}

sayHello() 
*/

// This is an example of a closure; a chunk of code we can pass around and call
// whenever we want.
// If you want the closure to accpet parameters, they need to be written in a
// way: Closures start and end with braces, so we put the information inside
// the braces:

let sayHello = { (name: String) -> String in 
"Hi \(name)!"
}

print(sayHello("Taylor")) 
// the keyword "in" comes directly after the parameters and return type of the
// closure. "in" is used to mark te end of the parameters and return type - 
// Everything after is the body of the closure itself.

// Let's look at:
// var greetCopy = greetUser 

/*
1. The empty parentheses marks a function that takes no parameters.
2. The arrow means just what it means when creating a function:
    we're about to declare the return type for the function.
3. VOID means "nothing" - this function returns nothing. Sometimes you might
    see this written as (), but we usually avoid that becuase it can be confused
    with the empty parameter list.
*/

// Every function's type depends on the data it receives and sends back:
func getUserData(for id: Int) -> String {
    if id == 1989 {
        return "Taylor Swift"
    }
    else {
        return "Anonymous"
    }
}

let data: (Int) -> (String) = getUserData
let user = data(1989)
print(user) 

let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]
let sortedTeam = team.sorted()
print(sortedTeam)

// if we wanted to control that sort, we can pass in a custom sorted function
// since sorted() allows us to do that. This function must return two strings,
// and return true if the first string should be sorted before the second, or 
// false if the the first string should be sorted after second:

func captainFirstSorted(name1: String, name2: String) -> Bool {

    // if the first name is Suzanne, return true
    if name1 == "Suzanne" {
        return true 
    }

    // return false if the name2 is Suzanne
    else if name2 == "Suzanne" {
        return false 
    }

    // if neither are Suzanne, do a normal alphabetical sort
    return name1 < name2
}
/*
let captainFirstTeam = team.sorted(by: captainFirstSorted)
print(captainFirstTeam)
*/
// This essentially allows us to pass functions into other functions

// However, the power of closures lets us pass an anonymous function
// into another function:
let captainFirstTeam = team.sorted(by: { (name1: String, name2: String) -> Bool in
    // if the first name is Suzanne, return true
    if name1 == "Suzanne" {
        return true 
    }

    // return false if the name2 is Suzanne
    else if name2 == "Suzanne" {
        return false 
    }

    // if neither are Suzanne, do a normal alphabetical sort
    return name1 < name2
})
print(captainFirstTeam)