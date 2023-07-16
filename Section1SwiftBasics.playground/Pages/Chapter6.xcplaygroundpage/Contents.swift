//: [Previous](@previous)

import Foundation

// Chapter 6: Optionals

// Mini-Exercises
public func s1c6Exercise1() {
  var myFavoriteSong: String?
  myFavoriteSong = "Before by Niki"
  print(myFavoriteSong as Any)
  myFavoriteSong = nil
  print(myFavoriteSong as Any)
  
  // the variable parsedInt have Int? type (an optional integer)
  // that because there will be 2 possible value
  // either int when the string argument is a valid number
  // or nil when the string argument is an invalid number
  var parsedInt = Int("10")
  print(parsedInt as Any)
  parsedInt = Int("cat")
  print(parsedInt as Any)
}

public func s1c6Exercise2() {
  var myFavoriteSong: String?
  myFavoriteSong = "Before by Niki"
  if  let myFavoriteSong {
    print(myFavoriteSong)
  } else {
    print("I don’t have a favorite song.")
  }
}

// Challenges
func divideIfWhole(_ value: Int, by divisor: Int) -> Int? {
  if (value % divisor == 0) {
    return value / divisor;
  } else {
    return nil
  }
}

public func s1c6Challenge1() {
  let result1 = divideIfWhole(10, by: 2)
  
  // Unwrap using optional bindings
  if let result1 {
    print("Yep, it divides \(result1) times")
  } else {
    print("Not divisible :[")
  }
  
  // Unwrap using nil coalescing
  print("Yep, it divides \(result1 ?? 0) times")
  
  let result2 = divideIfWhole(10, by: 3)
  
  // Unwrap using optional bindings
  if let result2 {
    print("Yep, it divides \(result2) times")
  } else {
    print("Not divisible :[")
  }
  
  // Unwrap using nil coalescing
  print("Yep, it divides \(result2 ?? 0) times")
}

func printNumber(_ number: Int???) {
  guard let number else {
    return
  }
  
  guard let number else {
    return
  }
  
  guard let number else {
    return
  }
  
  print(number)
}

public func s1c6Challenge2() {
  let number: Int??? = 10
  
  // Fully force unwrap
  // this approach will work, but if number become nil we have a big problem.
  print(number!!!)
  
  // Optional bindings
  // a great solution. but looks tedious as we have to deal with nested if let.
  if let number {
    if let number {
      if let number {
        print(number)
      }
    }
  }
  
  // Using function with guard
  // still tedious as we have to deal with 3 layers of guard statements.
  printNumber(number)
}


//: [Next](@next)
