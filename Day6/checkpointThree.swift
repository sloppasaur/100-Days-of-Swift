// Nathaniel Barrera
// July 24, 2023
// Fizz Buzz
// Your goal is to loop from 1 through 100. For each number:
// if it's a multiple of 3 print "Fizz"
// if it's a multiple of 5, print "Buzz"
// if it's a multiple of 3 and 5, print "FizzBuzz"
import Cocoa 

for num in 1 ... 100 {
    // If num is a multiple of 3 and 5, print FizzBuzz
    if (num % 3 == 0) && (num % 5 == 0) {
        print("FizzBuzz")
        continue
    }

    // If num is only a multiple of 3, print Fizz
    else if (num % 3 == 0) {
        print("Fizz")
    }

    // If num is only a multiple of 5, print Buzz
    else if (num % 5 == 0) {
        print("Buzz")
    }

    // else, print the number
    else {
        print(num)
    }
}
print() 

for num in 1 ... 100 {
    // If num is a multiple of 3 and 5, print FizzBuzz
    if (num.isMultiple(of: 3)) && (num.isMultiple(of: 5)) {
        print("FizzBuzz")
        continue
    }

    // If num is only a multiple of 3, print Fizz
    else if (num.isMultiple(of: 3)) {
        print("Fizz")
    }

    // If num is only a multiple of 5, print Buzz
    else if (num.isMultiple(of: 5)) {
        print("Buzz")
    }

    // else, print the number
    else {
        print(num)
    }
}
print() 