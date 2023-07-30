import Cocoa 

// Things go wrong all the time - it's up to us to handle them or at least acknowledge when
// they might happen:

// This takes three steps:
/*
1. Telling Swift about the possible erros that can happen
2. Writing a Function that can flag up errors if they happen
3. Calling the function, and handling any errors that might happen
*/
enum PasswordError: Error {
    case short, obvious 
}

func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }

    if password.count < 8 {
        return "OK"
    }
    else if password.count < 10 {
        return "Good"
    }
    else {
        return "Excellent!"
    }
}

/*
1. If a function is able to throw erros without handling them itself, you must mark the
    fucntion as throws before the return type.
2. we don't sepcify exactly what kind of error is thrown by the function, just that it
    can throw errors.
3. Being marked with throws does not mean the function MUST throw errors, only
    that it might.
4. When it comes time to throw an erro, we write "throw" followed by one of our
    "PasswordError" cases. This immediately exits the function, meaning that it won't
    return a string.
5. If no errors are thrown, the function must behave like normal - it needs to return a
    string.
*/

/*
The Final Step is to run the function and handle and errors that might happen:
1. Starting a block of code using "do"
2. Calling one oor more throwing functions using "try"
3. Handling any thrown errors using "catch"
*/

// Try/Catch:
let string = "123456789xcv"

do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
    print() 
}
catch PasswordError.short {
    print("Please use a longer password.")
    print() 
}
catch PasswordError.obvious {
    print("I have the same combination on my luggage!")
}
catch {
    print("There was an error.")
}

// Note that Swift's throwing functions relies on three unique keywords:
// do, try, and catch

