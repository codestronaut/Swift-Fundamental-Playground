//: [Previous](@previous)

// Swift Fundamental Apprentice Section 1 - Swift Basics

import Foundation

// Chapter 1: Expressions, Variables & Constants

// Mini Exercises
public func s1c1MiniExercise() {
  let myAge: Int = 23
  var averageAge: Double = 23
  averageAge = Double(averageAge + 30 / 2)
  
  print("My Age: \(myAge)")
  print("Average Age: \(averageAge)")
  
  let testNumber: Int = 5
  let evenOdd: Int = testNumber % 2
  
  print("Test Number: \(testNumber)")
  print("Event(0) / Odd(1): \(evenOdd)")
  
  var answer: Int = 0
  answer += 1
  answer += 10
  answer *= 10
  answer >>= 3
  
  print(answer)
}

// Challenges
public func electricityCalculator() {
  let voltage: Double = 220
  let current: Double = 5
  let power: Double = voltage * current
  
  print("Voltage: \(voltage) V")
  print("Current: \(current) A")
  print("Power: \(power)")
  
  let resistance: Double = power / pow(current, 2)
  
  print("Resistence: \(resistance) Ohm")
}

public func diceRoller() {
  let randomNumber = arc4random()
  let diceRoll = randomNumber % 6
  
  print("Dice: \(diceRoll)")
}

public func quadraticEquation() {
  let a: Double = 2.0
  let b: Double = 3.0
  let c: Double = 1.0
  
  let root1 = (-b + (b * b - 4 * a * c).squareRoot()) / (2 * a)
  let root2 = (-b - (b * b - 4 * a * c).squareRoot()) / (2 * a)
  
  print("X1: \(root1)")
  print("X2: \(root2)")
}

//: [Next](@next)
