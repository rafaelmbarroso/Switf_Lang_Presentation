protocol StudentProto {
    var name: String { get set }
    var age: Int { get set }
    var id: Int { get set }
    var grade: String { get set }
}

struct SomeStudent: StudentProto {
    var name: String
    var age: Int
    var id: Int
    var grade: String
}

let student1 = SomeStudent(name: "John", age: 20, id: 12345, grade: "A")
print("Student name: \(student1.name)") // Output: John
print("Student age: \(student1.age)")  // Output: 20
print("Student ID: \(student1.id)")   // Output: 12345
print("Student grade: \(student1.grade)") // Output: A
