//: [Previous](@previous)

import Foundation

// Chapter 1: Collection Iteration with Closures

// Exercises
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

exercise()

// Challenges

// #1
func repeatTask(times: Int, task: () -> Void) {
  for _ in 0..<times {
    task()
  }
}

repeatTask(times: 10) {
  print("Swift Apprentice is a great book!")
}

// #2
func mathSum(length: Int, series: (Int) -> Int) -> Int {
  var sum = 0
  for i in 1...length {
    sum += series(i)
  }
  return sum
}

let sumOf10SquareNumbers = mathSum(length: 10) { number in
  number * number
}
print(sumOf10SquareNumbers)

func fibonacci(_ number: Int) -> Int {
  if number < 1 { return 0 }
  if number <= 2 { return 1 }
  
  return fibonacci(number - 1) + fibonacci(number - 2)
}

let sumOf10FibonacciNumbers = mathSum(length: 10) { number in
  fibonacci(number)
}
print(sumOf10FibonacciNumbers)

// #3
let appRatings = [
  "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
  "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
  "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]

var averageRatings: [String: Double] = [:]
appRatings.forEach { appName, ratings in
  averageRatings[appName] = Double(ratings.reduce(0, { $0 + $1 })) / Double(ratings.count)
}
print(averageRatings)

let appsWithHighAverageRating = averageRatings.filter { _, rating in
  rating > 3
}.map { appName, rating in
  appName
}
print(appsWithHighAverageRating)

//: [Next](@next)
