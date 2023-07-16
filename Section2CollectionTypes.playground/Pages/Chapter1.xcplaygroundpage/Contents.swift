//: [Previous](@previous)

// Swift Fundamental Apprentice Section 1 - Swift Basics

import Foundation

// Chapter 1: Arrays, Dictionaries & Sets

// Challenges
// #1
let result1 = removingOnce(1, from: [3, 1, 1, 3, 5, 5, 1])
print(result1)

func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
  var modifiedArray = array
  if let indexOfFirstOccurrence = array.firstIndex(of: item) {
    modifiedArray.remove(at: indexOfFirstOccurrence)
  }
  
  return modifiedArray
}

// #2
let result2 = removing(1, from: [3, 1, 1, 3, 5, 5, 1])
print(result2)

func removing(_ item: Int, from array: [Int]) -> [Int] {
  var modifiedArray = array
  modifiedArray.removeAll { value in
    value == item
  }
  
  return modifiedArray
}

// #3
let result3 = reversed([3, 1, 1, 3, 5, 5, 1])
print(result3)

func reversed(_ array: [Int]) -> [Int] {
  var reversedArray: [Int] = []
  for index in stride(from: array.count - 1, through: 0, by: -1) {
    reversedArray.append(array[index])
  }
  
  return reversedArray
}

// #4
if let result4a = middle([1, 2, 3]) {
  print(result4a)
} else {
  print("Invalid array")
}

if let result4b = middle([1, 2, 3, 4]) {
  print(result4b)
} else {
  print("Invalid array")
}

if let result4c = middle([]) {
  print(result4c)
} else {
  print("Invalid array")
}

func middle(_ array: [Int]) -> Int? {
  guard !array.isEmpty else {
    return nil
  }
  
  if (array.count % 2 == 0) {
    return array[array.count / 2 - 1]
  } else {
    return array[array.count / 2]
  }
}

// #5
if let result5a = minMax(of: [1, 2, 3]) {
  print(result5a)
} else {
  print("Invalid array")
}

if let result5b = minMax(of: [3, 2, 3, 5, 4]) {
  print(result5b)
} else {
  print("Invalid array")
}

if let result5c = minMax(of: []) {
  print(result5c)
} else {
  print("Invalid array")
}

func minMax(of numbers: [Int]) -> (min: Int, max: Int)? {
  guard !numbers.isEmpty else {
    return nil
  }
  
  var min = numbers.first!
  var max = numbers.first!
  for number in numbers {
    if number < min {
      min = number
    }
    
    if (number > max) {
      max = number
    }
  }
  
  return (min: min, max: max)
}

// #6
let result6 = merging(
  ["NY": "New York", "CA": "California"],
  with: ["CA": "California", "WA": "Washington"]
)

print(result6)

func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
  var modifiedDict1 = dict1
  for (key, value) in dict2 {
    modifiedDict1.updateValue(value, forKey: key)
  }
  
  return modifiedDict1
}

// #7
let result7 = occurrencesOfCharacters(in: "Collection")
print(result7)

func occurrencesOfCharacters(in text: String) -> [Character: Int] {
  var dict: [Character: Int] = [:]
  for char in text {
    dict.updateValue(dict[char, default: 0] + 1, forKey: char)
  }
  
  return dict
}

// #8
let result8a = isInvertible(["a": 1, "b": 2, "c": 3])
let result8b = isInvertible(["a": 1, "b": 2, "c": 1])
print(result8a)
print(result8b)

func isInvertible(_ dict: [String: Int]) -> Bool {
  Array(dict.values) == Array(Set(dict.values))
}

// #9
var nameTitleLookup: [String: String?] = ["Mary": "Engineer", "Patrick": "Intern", "Ray": "Hacker"]
print(nameTitleLookup)
nameTitleLookup.updateValue(nil, forKey: "Patrick")
nameTitleLookup["Ray"] = nil
print(nameTitleLookup)

//: [Next](@next)
