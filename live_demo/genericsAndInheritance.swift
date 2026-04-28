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

class macbook: computerModel {
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

let macbookPro = macbook(model: "MacBook Pro", cpu: "Apple M5 Max", display: "16 inch Retina Display", os: "macOS Tahoe", year: 2025)
let pcLaptop = pcLaptop(model: "PC Laptop", cpu: "Intel Ultra 9", display: "15 inch Full HD", os: "Windows 11", gpu: "NVIDIA GTX 5070TI")

print("MacBook Pro: \(macbookPro.model), CPU: \(macbookPro.cpu), Display: \(macbookPro.display), OS: \(macbookPro.os), Year: \(macbookPro.year)")
print("PC Laptop: \(pcLaptop.model), CPU: \(pcLaptop.cpu), Display: \(pcLaptop.display), OS: \(pcLaptop.os), GPU: \(pcLaptop.gpu)")


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
print("Before swap: x = \(x), y = \(y)")
swapValues(&x, &y)
print("After swap: x = \(x), y = \(y)")

var str1 = "Hello"
var str2 = "World"
print("Before swap: str1 = \(str1), str2 = \(str2)")
swapValues(&str1, &str2)
print("After swap: str1 = \(str1), str2 = \(str2)")

