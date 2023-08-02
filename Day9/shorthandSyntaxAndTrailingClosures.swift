import Cocoa 

// Swift has tricks to reduce the amount of syntax that comes with closures,
// but take a look at the code we made earlier:


let team = ["Gloria", "Suzanne", "Piper", "Tiffany", "Tasha"]

/*
let captainFirstTeam = team.sorted(by: {( name1: String, name2: String) -> Bool in 
    if name1 == "Suzanne" {
        return true 
    }
    else if name2 == "Suzanne" {
        return false 
    }
    
    return name1 < name2 
})

print(captainFirstTeam)
*/

// Remeber that sorted can accept any kind of function to do custom sorting,
// with one rule: That function must accept two items from the array in question
// (that's two strings here), and return a Boolean set to true if the first
// string should be sorted before the second.

// We can rewrite the heading of the closure to this:

/*
let captainFirstTeam = team.sorted(by: { name1, name2 in 
    if name1 == "Suzanne" {
        return true
    }
    else if name2 == "Suzanne" {
        return false 
    }

    return name1 < name2
})

print(captainFirstTeam)
*/

// We can go a step further with *trailing closure syntax*

/*
let captainFirstTeam = team.sorted { name1, name2 in 
    if name1 == "Suzanne" {
        return true 
    }
    else if name2 == "Suzanne" {
        return false 
    }

    return name1 < name2 
}

print(captainFirstTeam)
*/

// Rather than passing the closure in as a paramter, we just start the closure
// directly - and by doing so remove "(by:" from the start.

// There's one last way Swift can make closures less cluttered:
// Swift can automatically provide parameter names for us, using
// *shorthand syntax* With this syntax, we don't have to even type 
// "name1, name2 in" any more, but instead rely on specially named values 
// Swift provides for us: $0, and $1, for the first and second strings 
// repectively:

let captainFirstTeam = team.sorted {
    if $0 == "Suzanne" {
        return true 
    }
    else if $1 == "Suzanne" {
        return false
    }

    return $0 < $1
}
print(captainFirstTeam)

// Remember that "in" is used to amrk the end of the parameters and return
// type; everything after that is the body of the closure itself.

// There are no fixed rules about when to use shortand syntax and when no to,
// but in case it's helpful I use shorthand syntax unless any of the following
// are true:

/*
1. The closure's code is long.
2. $0 and friends are used more than once each.
3. You get three or more parameters (e.g $2, $3, etc.)
*/

// Here's more practice with the filter() function:
let tOnly = team.filter { $0.hasPrefix("T") }
print(tOnly) 

// using the map() function lets us transform every item in the array 
// using some code of our choosing, and sends us back a new array
// of all the transformed items:
let uppercaseTeam = team.map { $0.uppercased() }
print(uppercaseTeam)

// TIP: When working with map(), the type your return doesn't have to be the
// same as the type you started with - you could convert an array of integers
// to an array of strings, for example:

// Like I said, you're going to be using closures a lot with SwiftUI
/*
1. When you create a list of data on the screen, SwiftUI will ask you to provide
    a function that accepts one item from the list and converts it to smomething
    it can display on-screen
2. When you create a button, SwiftUI will ask you to provide one function to
    execute when the button is pressed, and another to generate the contents of
    the button - a picture, or some text, and so on.
3. Even just putting stacking pieces of text vertically is done using a closure.
*/