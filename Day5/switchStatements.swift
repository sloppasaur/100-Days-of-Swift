import Cocoa

// You can use if and else if to repeatedly check conditions:
enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

if forecast == .sun {
    print("It should be a nice day.")
    print()
} 
else if forecast == .rain {
    print("Pack an umbrella.")
    print() 
} 
else if forecast == .wind {
    print("Wear something warm")
    print() 
} 
else if forecast == .rain {
    print("School is cancelled.")
    print()
} 
else {
    print("Our forecast generator is broken!")
    print() 
}

// There are a few problems:
// we have to write 'forecast' multiple times.
// .rain is checked twice, and the second time can never be true.
// .snow was never checked at all, missing functionality

// Let's try switch
switch forecast {
    case .sun:
        print("It should be a nice day.")
    case .rain:
        print("Pack an umbrella.")
    case .wind:
        print("Wear something warm.")
    case .snow:
        print("School is cancelled.")
    case .unknown:
        print("Our forecast generator is broken!")
}

// - we start with switch forecast, which tells Swift the value we want to check.
// - case statements each have values that compare with forecast
// - each case lists one value type, and because we're switching on forecast lets
// the prefix not need to be allowed.
// - each case should have a colon to mark the start of the code for that case
// - We use a closing brace to end the switch statement

let place = "Metropolis"

switch place {
    case "Gotham":
        print("You're Batman!")
    case "Mega-City One":
        print("You're Judge Dredd!")
    case "Wakanda":
        print("You're Black Panther!")
    default:
        print("Who are you?")
}

// REMEMBER that swift checks it cases in order and runs the first one that matches.
// if you place default before any other case, that case is useless because it will
// never be matched.

// IF you want Swift to carry on executing subsequent cases, use "falthrough"
let day = 5
print("My true love gave to me…")

switch day {
    case 5:
        print("5 golden rings")
        fallthrough
    case 4:
        print("4 calling birds")
        fallthrough
    case 3:
        print("3 French hens")
        fallthrough
    case 2:
        print("2 turtle doves")
        fallthrough
    default:
        print("A partridge in a pear tree")
    }