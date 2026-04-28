// ===== 1. CONSTANTS AND VARIABLES =====

let language = "Swift"        // inferred as String
let version: Int = 5          // explicit Int annotation
var users = 0                 // inferred as Int, mutable

print("\(language) version \(version)")

users = users + 1
users = users + 1
print("Users: \(users)")


// ===== 2. CONDITIONALS =====

let temp = 69

if temp > 80 {
    print("hot")
} else if temp > 60 {
    print("nice")
} else {
    print("cold")
}


// ===== 3. LOOPS =====

var sum = 0
for i in 1...5 {
    sum = sum + i
}
print("Sum of 1 to 5 is \(sum)")


// ===== 4. FUNCTIONS =====

func greet(person: String) -> String {
    return "Hello, \(person)"
}

let message = greet(person: "class")
print(message)


// ===== 5. SCOPING (shadowing) =====

let status = "outer"

func showStatus() {
    let status = "inner"      // shadows the outer status
    print("Inside function: \(status)")
}

showStatus()
print("Back outside: \(status)")
