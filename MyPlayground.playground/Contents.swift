//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//play with strings

var odds = [Int]()
odds.append(1)
odds.append(3)
odds.append(5)
odds.append(7)

let evens: [Int] = [2, 4, 6, 8]

var both = [Int]()
both.append(contentsOf: odds)
both = both + evens

//both.sort
//let constantboth = both
//let newArray = contantboth.sorted()

both.sort {return $0 == $1}

let mapped = both.filter { $0 % 2 == 0}
print(mapped)

//iterating

for i in 0 ..< both.count{
    print(both[i])
}

for i in both{
    print(i)
}

for (index, value) in both.enumerated(){
    print(both)
}
//First and last
let valueFirst = both.first
let valueLast = both.last
print(valueLast,valueFirst)

//String Array
var names = ["John", "Dave", "Sam", "Jen" , "Jo"]
//.contains searches a the array in question
names.contains("Jen")

if let index = names.index(of: "Aaron"){
    //Used to remove a person from an Array
    names.remove(at: index)
}
else{
    print("not in array")
}

var morenames = names
morenames.append("Seth")
print(morenames)
print(names)


//Creating an Extension on any array
extension Array{
    mutating func dropRandom(){
        guard !isEmpty else {return}
        let index = Int(arc4random_uniform(UInt32(count)))
        remove(at:index)
        
    }
}

//Create an Extension on an array INT to a string
extension Array where Element == Int{

    func toString() -> [String]{
        // return self.map {"\(value)"}
        var stringArray = [String]()
        for value in self{
            stringArray.append(" \(value)")
        }
        return stringArray
    }
}

both.toString()

struct Student{
    let Name: String
    let Age: UInt
}

extension Student: Equatable{
    static func == (lhs: Student, rhs: Student) -> Bool{
        return rhs.Name == lhs.Name && lhs.Age == rhs.Age
    }
}
let john = Student(Name: "John", Age: 28)
let Aaron = Student(Name: "Aaron", Age: 19)
let Josh = Student(Name: "Josh", Age: 21)

var classes = [String: [Student]]()
classes["iOS"] = [john, Aaron]

extension Dictionary where Key == String, Value == [Student]{
    
    func allClasses(for student: Student) -> [String]{
        var arrAaron = [String]()
        for (ClassName, students) in self{
            if students.contains(student){
                arrAaron.append(ClassName)
            }
            else{
                
            }
        }
        return arrAaron
    }
    
}

classes.allClasses(for: Aaron)
