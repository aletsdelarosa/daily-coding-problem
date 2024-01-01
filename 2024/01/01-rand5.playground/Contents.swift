func rand7() -> Int {
  return Int.random(in: 1...7)
}

func rand5() -> Int {
  var currentNumber = 0

  repeat {
    currentNumber = rand7()
  } while (currentNumber > 5)

  return currentNumber
}

/// Run the code 100,000 times and validate that the probability of each number is 1/5 (20%).
func test() {
  var results = Array(repeating: 0, count: 5)

  for _ in 0...100_000 {
    let number = rand5()

    results[number - 1] += 1
  }

  var probabilities = Array(repeating: 0.0, count: 5)

  for (index, result) in results.enumerated() {
    probabilities[index] = (Double(result) / 100_000) * 100
  }

  print(probabilities)
}


test()
