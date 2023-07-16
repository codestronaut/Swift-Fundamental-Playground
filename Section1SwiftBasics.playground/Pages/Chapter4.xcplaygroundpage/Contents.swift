//: [Previous](@previous)

import Foundation

// Chapter 4: Advanced Control Flow
 
// Mini Exercises
public func s1c4Exercise1() {
  let range = 1...10
  for i in range {
    print("Square of \(i) = \(i * i)")
  }
}

public func s1c4Exercise2() {
  let range = 1...10
  for i in range {
    let iSquareRoot = sqrt(Double(i))
    print("Square root of \(i) = \(iSquareRoot)")
  }
}

public func s1c4Exercise3() {
  var sum = 0
  for row in 0..<8 where row % 2 == 1 {
    for col in 0..<8 {
      sum += row * col
    }
  }
  print("Result: \(sum)")
}

public func s1c4Exercise4(age: Int) {
  switch age {
  case 0...2:
    print("Infant")
  case 3...12:
    print("Child")
  case 13...19:
    print("Teenager")
  case 20...39:
    print("Adult")
  case 40...60:
    print("Middle-aged")
  case _ where age >= 61:
    print("Elderly")
  default:
    print("Invalid age")
  }
}

public func s1c4Exercise5() {
  let person = ("Aditya", 23)
  switch person {
  case (let name, 0...2):
    print("\(name) is an infant")
  case (let name, 3...12):
    print("\(name) is a child")
  case (let name, 13...19):
    print("\(name) is a teenager")
  case (let name, 20...39):
    print("\(name) is an adult")
  case (let name, 40...60):
    print("\(name) is a middle-aged")
  case let (name, age) where age >= 61:
    print("\(name) is an elderly")
  default:
    print("Invalid age")
  }
}

// Challenges
public func s1c4Challenge1() {
  for i in 0...10 {
    print(10 - i)
  }
}

public func s1c4Challenge2() {
  for i in 0...10 {
    print(Double(i) / 10.0)
  }
}


//: [Next](@next)
