// Nathaniel Barrera
// July 7th, 2023
// 100 Days of Swift: Checkpoint 1
// 
// The goal of this program is create a constant holding any temperature
// in Celsius, which will be converted to Fahrenheit:
//      Celsius to Fahrenheit = (C * 9) / 5 + 32
// Print the values to the user, showing both the Celsius and Fahrenheit Values
import Cocoa

// assign the initial value to the constant celsisus
let celsius = 35.7

// convert celsius to fahrenheit
let fahrenheit = (celsius * 9) / 5 + 32

// print both the celsius and fahrenheit values
// Option+Shift+8 allows for "°"
print("Temperature in Celsius:      \(celsius)°C")
print("Temperature in fahrenheit:   \(fahrenheit)°F")