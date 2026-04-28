// Types Demo

// In Swift:
let thisIsAConst = 1000 // let is always a constant
var thisIsAVariable = 2000 // and var is always a variable

// You don't have to infer the types:

var intVarNotInfered = 1000
var floatVarNotInfered = 0.0001
var stringVarNotInfered = "One Hundred"

// But, you can if you'd like to:

var intVar: Int = 100
var floatVar: Float = 0.0001
var stringVar: String = "One Hundred"
// In Swift these are referred to as Type Annotations

// Word length of a variable can be speficied by indicating what type of variable to assing
var int8bit: Int8 = 4
var float32bit: Float32 = 3.14159

var unsignedInt: UInt64 = 9
var signedInt: Int64 = -9
print("Unsigned: \(unsignedInt)\nSigned \(signedInt)")
// Intergers are default signed
// but can be declared as unsigned using UInt64 or UInt32, depending on your scenario

var maxInt = Int8.max
var minInt = Int8.min
print("Max bound: \(maxInt)\nMin bound: \(minInt)")
// The dot op max and min just refer to the max and min bounts of the interger range given

// Variables can also declared in a single var statement together seperated by semi-colons
var x: String = "1", y: Double = 2.0, z:Int = 3

// Since Swift's strings are encoded in Unicode (UTF-8), you can use emojis in variables and strings

var 🏫 = "UTRGV"
var 📚 = 4.0

print("School Name: \(🏫)\nGPA: \(📚)"); 
// Swift doesn't require you to finish every statement with a semi-colon but you can if you'd like to