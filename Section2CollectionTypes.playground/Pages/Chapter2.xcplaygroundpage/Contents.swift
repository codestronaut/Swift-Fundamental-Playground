//: [Previous](@previous)

import Foundation

// Chapter 1: Collection Iteration with Closures

exercise()

func exercise() {
  let names = ["Ella", "Freya", "Indira", "Lulu"]
  print(names)
  
  // #1
  let namesReduced = names.reduce("") { $0 + $1 }
  print(namesReduced)
  
  // #2
  let longerNames = names.filter { name in
    name.count > 4
  }.reduce("") { result, name in
    result + name
  }
  print(longerNames)
  
  // #3
  let namesAndAges = ["Ella": 16, "Freya": 17, "Indira": 21, "Lulu": 22]
  let underAgeNames = namesAndAges.filter { element in
    element.value < 18
  }
  print(underAgeNames)
  
  // #4
  let adultsNames = namesAndAges.filter { element in
    element.value >= 18
  }.map { name, _ in
    name
  }
  print(adultsNames)
}

//: [Next](@next)
