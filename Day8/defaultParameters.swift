import Cocoa 

// Adding parameters to functions adds customization points, so that functions can operate on different
// data depending on the needs required. However, somtimes you dont't want to think about the customization
// Perhaps you want to keep things the same 9 out of 10:

// Introducing Default Parameters:
func printTimesTables(for number: Int, end: Int = 12) {
    for i in 1 ... end {
        print("\(i) x \(number) is \(i * number)")
    }
    print() 
}

printTimesTables(for: 5, end: 20)
printTimesTables(for: 8)

// Since we didn't include an end in the external paratmeter, end defaults to 12 as stated in the function.

// Here's another use of default parameters:
var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
print() 
characters.removeAll()
print(characters.count)
print() 

// Remove all will remove all the items in the array, which is usually what we want.
// However, on the times you want to add stuff back into the array, there's a second way
// of this function that only removes the items in the function while keeping the capcity
// of the array the same:

characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
print() 
characters.removeAll(keepingCapacity: true)
print(characters.count)
print() 

func findDirections(from: String, to: String, route: String = "fastest", avoidHighways: Bool = false) {
    print("Going from \(from) to \(to) taking the \(route) route. Highway usage is set to \(!avoidHighways)")
    print()
}

findDirections(from: "London", to: "Glasgow")
findDirections(from: "London", to: "Glasgow", route: "scenic")
findDirections(from: "London", to: "Glasgow", route: "scenic", avoidHighways: true)

func fireArrow(skillLevel: Int = 1) -> String {
	switch skillLevel {
	case 1...3:
		return("You missed the target.")
	case 4...7:
		return("You hit the target.")
	default:
		return("Great shot!")
	}
}

print(fireArrow())