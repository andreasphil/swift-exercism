func protectSecret(_ secret: String, withPassword password: String) -> (String) -> String {
  // As a named function
  // func reveal(attemptedPassword: String) -> String {
  //   attemptedPassword == password ? secret : "Sorry. No hidden secrets here."
  // }
  // return reveal

  // As an anonymous function
  return { (attemptedPassword: String) -> String in
    attemptedPassword == password ? secret : "Sorry. No hidden secrets here."
  }
}

func generateCombination(forRoom room: Int, usingFunction f: (Int) -> Int) -> (Int, Int, Int) {
  var combination: [Int] = []
  combination.append(f(room))
  combination.append(f(combination[0]))
  combination.append(f(combination[1]))
  return (combination[0], combination[1], combination[2])
}
