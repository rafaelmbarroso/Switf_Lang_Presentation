// Inheritance and Generics in Swift

// == Inheritance ==

class computerModel {
    var model: String
    var cpu: String
    var display: String
    var os: String

    init(model: String, cpu: String, display: String, os: String) {
        self.model = model
        self.cpu = cpu
        self.display = display
        self.os = os
    } 
}

class appleComputer: computerModel {
    var year: Int

    init(model: String, cpu: String, display: String, os: String, year: Int) {
        self.year = year
        super.init(model: model, cpu: cpu, display: display, os: os)
    }
}

class pcLaptop: computerModel {
    var gpu: String

    init(model: String, cpu: String, display: String, os: String, gpu: String) {
        self.gpu = gpu
        super.init(model: model, cpu: cpu, display: display, os: os)
    }
}

let macbookPro = appleComputer(model: "Macbook Pro", cpu: "Apple M5 Max", display: "16 inch Retina Display", os: "macOS Tahoe", year: 2025)
let anyPcLaptop = pcLaptop(model: "PC Laptop", cpu: "Intel Core i9-13900K", display: "17 inch 4K Display", os: "Windows 11 Pro", gpu: "NVIDIA GeForce RTX 4090")

print("=== Inheritance ===")
print("Macbook Pro: \(macbookPro.model), CPU: \(macbookPro.cpu), Display: \(macbookPro.display), OS: \(macbookPro.os), Year: \(macbookPro.year)")
print("PC Laptop: \(anyPcLaptop.model), CPU: \(anyPcLaptop.cpu), Display: \(anyPcLaptop.display), OS: \(anyPcLaptop.os), GPU: \(anyPcLaptop.gpu)")

// == Generics ==

// A generic function to swap two values of any type
func swapValues<T>(_ a: inout T, _ b: inout T) {
    let temp = a
    a = b
    b = temp
}

// Note how we can reuse the swap function without needing to write a new function for each type.

var x = 5
var y = 10

print("\n")
print("=== Generics ===")
print("Before swap: x = \(x), y = \(y)")
swapValues(&x, &y)
print("After swap: x = \(x), y = \(y)")

var str1 = "Hello"
var str2 = "World"

print("\n")
print("Before swap: str1 = \(str1), str2 = \(str2)")
swapValues(&str1, &str2)
print("After swap: str1 = \(str1), str2 = \(str2)")

