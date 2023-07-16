//: [Previous](@previous)

import Foundation

// Chapter 5: Functions

// Mini-Exercises

public func printFullName(first: String, last: String) {
  print("\(first) \(last)")
}

public func printFullName(_ first: String, _ last: String) {
  print("\(first) \(last)")
}

public func calculateFullName(_ first: String, _ last: String) -> String {
  "\(first) \(last)"
}

public func calculateFullName(first: String, last: String) -> (String, Int) {
  let fullName = "\(first) \(last)"
  return (fullName, fullName.count)
}

// Challenges

// #1
func isNumberDivisible(_ number: Int, by divisor: Int) -> Bool {
  number % divisor == 0
}

public func isPrime(_ number: Int) -> Bool {
  if (number < 0) {
    return false
  }
  
  for divisor in 2..<number {
    if (isNumberDivisible(number, by: divisor)) {
      return false
    }
  }
  
  return true
}

// #2
public func fibonacci(_ number: Int) -> Int {
  if (number < 1) {
    return 0
  }
  
  if (number <= 2) {
    return 1
  }
  
  return fibonacci(number - 1) + fibonacci(number - 2)
}


//: [Next](@next)
