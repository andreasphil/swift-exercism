// Define the 'birthday' String constant
let birthday = "Birthday"

// Define the 'valentine' String constant
let valentine = "Valentine's Day"

// Define the 'anniversary' String constant
let anniversary = "Anniversary"

// Define the 'space' Character constant
let space: Character = " "

// Define the 'exclamation' Character constant
let exclamation: Character = "!"

func buildSign(for occasion: String, name: String) -> String {
  "Happy" + String(space) + occasion + String(space) + name + String(exclamation)
}

func graduationFor(name: String, year: Int) -> String {
  "Congratulations \(name)!\nClass of \(year)"
}

func costOf(sign: String) -> Int {
  20 + sign.count * 2
}
