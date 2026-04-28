// Define a protocol for students
protocol UniversityProto {
    var name: String { get set }
    var age: Int { get set }
    var id: Int { get set }
    var grade: String { get set }
}

// Define the struct for the students that conforms to the protocol
struct SomeStudent: UniversityProto {
    var name: String
    var age: Int
    var id: Int
    var grade: String
}

// Note how the faculty struct also conforms to the same protocol, but has an additional property for department
struct SomeFaculty: UniversityProto {
    var name: String
    var age: Int
    var id: Int
    var grade: String
    var department: String
}

let student1 = SomeStudent(name: "John", age: 20, id: 12345, grade: "A")
let faculty1 = SomeFaculty(name: "Dr. Smith", age: 45, id: 54321, grade: "", department: "Computer Science")

print("Student name: \(student1.name)\nStudent age: \(student1.age)\nStudent ID: \(student1.id)\nStudent grade: \(student1.grade)")
print("\n")
print("Faculty name: \(faculty1.name)\nFaculty age: \(faculty1.age)\nFaculty ID: \(faculty1.id)\nDepartment: \(faculty1.department)")