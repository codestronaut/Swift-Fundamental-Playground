//: [Previous](@previous)

import Foundation

// Chapter 3: Basic Control Flow

// Mini Exercises
public func s1c3Exercise1() {
  let myAge = 23
  let isTeenager = myAge >= 13 && myAge <= 19
  
  let theirAge = 30
  let bothTeenagers = isTeenager && (theirAge >= 13 && theirAge <= 19)
  
  print("am I a teenager? \(isTeenager)")
  print("are we teenagers? \(bothTeenagers)")
  
  let reader = "Aditya"
  let author = "Matt Galloway"
  let authorIsReader = reader == author
  
  print("author is reader? \(authorIsReader)")
  
  let readerBeforeAuthor = reader < author
  
  print("reader before author? \(readerBeforeAuthor)")
}

public func s1c3Exercise2() {
  let myAge = 23
  
  if myAge >= 13 && myAge <= 19 {
    print("\(myAge) years old is a Teenager")
  } else {
    print("\(myAge) years old is not a Teenager")
  }
  
  let answer = myAge >= 13 && myAge <= 19 ? "Teenager" : "Not a Teenager"
  print(answer)
}

public func s1c3Exercise3() {
  var counter = 0
  while counter < 10 {
    print("counter is \(counter)")
    counter += 1
  }
}

public func s1c3Exercise4() {
  var counter = 0
  var roll = 0
  repeat {
    roll = Int.random(in: 1...6)
    counter += 1
    print("After \(counter) rolls, roll is \(roll)")
  } while roll != 1
}

// Challenges
public func s1c3Challenge1() {
  // Snakes & Ladders
  // 20 positions (1 until 20)
  // Ladders positions: 3 -> 15, 7 -> 12
  // Snakes positions = 11 -> 2, 17 -> 9
  
  let currentPosition = 10
  let diceRoll = Int.random(in: 1...6)
  var nextPosition = currentPosition + diceRoll
  
  print("Current position: \(currentPosition)")
  print("Next position: \(nextPosition)")
  
  if (nextPosition == 3) {
    print("On a ladder")
    nextPosition = 15
  } else if (nextPosition == 7) {
    print("On a ladder")
    nextPosition = 12
  } else if (nextPosition == 11) {
    print("Ops! the snake bite")
    nextPosition = 2
  } else if (nextPosition == 17) {
    print("Ops! the snake bite")
    nextPosition = 9
  }
  
  print("Final position: \(nextPosition)")
}

public func s1c3Challenge2() {
  let month = "february"
  let year = 2024
  var daysInMonth = 30
  
  let isLeapYear = (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
  if (month == "february" && isLeapYear) {
    daysInMonth = 29
  }
  
  print("\(month) in \(year) has \(daysInMonth) days")
}

public func s1c3Challenge3()  {
  let number = 135
  var trial = 1
  var times = 0

  while trial < number {
    trial *= 2
    times += 1
  }
  
  print("Next power of 2 >= \(number) is \(trial)")
  print("which is 2 to the power of \(times)")
}

public func s1c3Challenge4() {
  let depth = 5
  var counter = 1
  var triangle = 0
  
  while counter <= depth {
    triangle += counter
    counter += 1
  }
  
  print("Triangular number at depth \(depth) is \(triangle)")
}

public func s1c3Challenge5() {
  let n = 10
  var prev = 1
  var curr = 1
  var count = 2
  
  while count < n {
    let next = prev + curr
    prev = curr
    curr = next
    count += 1
  }
  
  print("\(n)th fibonaaci number is: \(curr)")
}


//: [Next](@next)
