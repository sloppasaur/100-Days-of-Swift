import Cocoa

// When we use if, we must provide Swift some kind of condition that will either
// be true or false once it's been evaluated.

let age = 16

if age >= 18 {
    print("You can vote in the next election")
    print() 
}

if age < 18 {
    print("Sorry, you're too young to vote.")
    print() 
}
 
 // The code above is not very efficient. Use 'else' instead:
// let age = 16

 if age >= 18 {     // if condition is true
    print("You can vote in the next election")
    print() 
 }
 else {             // if condition if false
    print("Sorry, you're too young to vote.")
    print()
 }

 // there's even else if:
 let a = false 
 let b = true 

 if a {
    print("Code to run if a true")
    print() 
 }
 else if b {
    print("Code to run if a is false, but b is true")
    print() 
 }
 else {
    print("Code to run if both a and b are false")
    print() 
 }

 // You can keep adding more else if conditions, just make sure the code doesn't 
 // get too complicated. We can also check more than one thing in an if statement:

let temp = 25
if temp > 20 {
    if temp < 30 {
        print("It's a nice day.")
        print() 
    }
}

// or like this:
if temp > 20 && temp < 30 {
    print("It's a nice day.")
    print()  
}

// && means 'and' and || means 'or'
let userAge = 14
let hasParentalConsent = true 

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game.")
    print()
}

// Here's an example with everything combined: 
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

/*
When we set the value for transport we need to be explicit that we’re referring
to TransportOption.airplane. We can’t just write .airplane because Swift 
doesn’t understand we mean the TransportOption enum.

Once that has happened, we don’t need to write TransportOption any more because
Swift knows transport must be some kind of TransportOption. So, we can check
whether it’s equal to .airplane rather than TransportOption.airplane.

The code using || to check whether transport is equal to .airplane or equal to 
.helicopter, and if either of them are true then the condition is true, and 
“Let’s fly!” is printed.

If the first condition fails – if the transport mode isn’t .airplane or 
.helicopter – then the second condition is run: is the transport mode .bicycle? 
If so, “I hope there’s a bike path…” is printed.

If we aren’t going by bicycle either, then we check whether we’re going by car. 
If we are, “Time to get stuck in traffic.” is printed.

Finally, if all the previous conditions fail then the else block is run, and 
it means we’re going by scooter.
*/