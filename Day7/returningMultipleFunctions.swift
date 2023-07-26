import Cocoa 

// It is possible to return multiple values from a function; one of those ways
// is with an Array
func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser() 
print("Name: \(user[0]) \(user[1])")

// This is bad because you have to remember what "user[0]" and "user[1]" are.
// Here's a way with a dictionary:
func getsUser() -> [String: String] {
    [
        "firstName": "Taylor",
        "lastName": "Swift"
    ]
}

let useR = getsUser()
print("Name: \(useR["firstName", default: "Anonymous"]) \(useR["lastName", default: "Anonymous"])") 

// even though the function is more clear, you're still required to provide defaults in case
// things we don't expect appear.

// Tuples solve that issue:
func getUseR() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let uSer = getUseR() 
print("Name: \(uSer.firstName) \(uSer.lastName)")

// 1. The return type is now (firstName: String, lastName: String), which is a tuple
//      containing two strings
// 2. Each string in the tuple has a name. There aren't in quotes: they are specific
//      names for each item in the tuple, as opposed to the keys used in the dictionaries
// 3. Inside the function we send back a tuple containing all the elements we promised,
//      attached to the names: firstName is being set to "Taylor," etc
// 4. When we call getUser(), we can read the tuple's values using the key names:
//      firstName, lastName, etc.

// While they may seem simlar to dictionaries, they are different:
// 1. When you access values in a dictionary, Swift can't know ahead of time whether
//      they are present or not. A default values needs to be provided
// 2. When you access values in a tuple, Swift does know ahead of time that it is 
//      available because the tuple says it's available.
// 3. We access values using user.firstName: it's not a string, so there's also no chance
//      of typos.
// 4. A dictionary may contain hundreds of others values alongside "firstName", but a tuple
//      can't. We must list all the values a tuple will contain, and the result is it's 
//      guaranteed to contain them all and nothing else.

func getTaylor() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}
let (nameFirst, nameLast) = getTaylor()
print("Name: \(nameFirst) \(nameLast)")