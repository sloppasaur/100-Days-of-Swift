import Cocoa 

// We've seen how Swift developers name their functions in order to make it easier to remember
// what they do when the function is called.
func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an Empty Array
    var rolls = [Int]() 

    // Roll as many dice as needed
    for _ in 1 ... count {
        // Add each result to our array
        let roll = Int.random(in: 1 ... sides)
        rolls.append(roll)
    }

    // Send back all the rolls
    return rolls 
}

let rolls = rollDice(sides: 6,  count: 4)


func isUppercase(_ string: String) -> Bool {
    string == string.uppercased() 
}

let string = "Hello, World"
let result = isUppercase(string) 
print(result) 
print() 

// adding the _ in the parameter name allows us to remove the external parameter.
// This is used a lot in Swift

// You can also use the keyword "for" in swift:
func printTimesTables(for number: Int) {
    for i in 1 ... 12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 5)