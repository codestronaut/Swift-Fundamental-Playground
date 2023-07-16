//: [Previous](@previous)

import Foundation

// Chapter 2: Types & Operations

// Mini Exercises
public func s1c2Exercise1() {
  let firstAge = 42
  let secondAge = 21
  let averageAge = (Double(firstAge) + Double(secondAge)) / 2.0
  
  print(averageAge)
}

public func s1c2Exercise2() {
  let firstName = "Aditya"
  let lastName = "Rohman"
  let fullName = "\(firstName) \(lastName)"
  let introduction = "Hello, my name is \(fullName)"
  
  print(introduction)
}

public func s1c2Exercise3() {
  var weather = (month: 6, day: 18, year: 2023, averageTemperature: 27)
  weather.averageTemperature = 28
  let (month, day, year, averageTemperature) = weather
  
  print("\(day)-\(month)-\(year): \(averageTemperature)ºC")
}

// Challenges

public func coordinateTuple() {
  let coordinates = (2, 3)
  
  print("coordinate x: \(coordinates.0)")
  print("coordinate y: \(coordinates.1)")
  
  let namedCoordinate = (row: 2, column: 3)
  
  print("row: \(namedCoordinate.row)")
  print("column: \(namedCoordinate.column)")
}


//: [Next](@next)
