import Cocoa

// An enum, or enumeration, is a set of named values we can create and use
// in code. They don't have any special meaning, but they are more efficient
// and safer. Use them a lot in your code:
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}

// this calls a enum labeled "Weekday" and provides five cases to handle
// rather than using strings, we would use the enum:
var day = Weekday.monday
print(day)
print() 

day = Weekday.tuesday
print(day) 
print() 

day = Weekday.friday
print(day) 
print() 

// This allows us to call things with less errors, such as the possibility
// of naming day with "Friday " with a space at the end.
// You can also name enums with a single case, separated with commas:
enum Weekdays {
    case monday, tuesday, wednesday, thursday, friday
}

// Remember that once you assign a value to avariable or constant, its data
// type becomes fixed and be changed later on. with enums you can skip the 
// enum name after the first assignment:
var days = Weekdays.monday
print(days) 
print() 

days = .tuesday
print(days) 
print() 

days = .friday
print(days) 
print() 
