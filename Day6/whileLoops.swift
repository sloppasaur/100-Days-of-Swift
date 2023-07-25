import Cocoa 

// the second loop Swift has is called "while"; while will continuously
// loop until the condition is false:
var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast Off!")
print() 

// While loops are really usefull when you just don't know how many times
// the loop will go around. Both Int and Double have random(in: ):

// Create an integer to store our roll:
var roll = 0

// Carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was 
    roll = Int.random(in : 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended - we got a 20!
print("Critical hit!")