import Foundation

func splitOnNewlines(_ poem: String) -> [String] {
  poem.components(separatedBy: "\n")
  
}

func firstLetter(_ line: String) -> Character {
  line.first ?? "_"
}

func capitalize(_ phrase: String) -> String {
  phrase.capitalized
}

func trimFromEnd(_ line: String) -> String {
  line.trimmingCharacters(in: .whitespaces)
}

func lastLetter(_ line: String) -> Character {
  line.last ?? "_"
}

func backDoorPassword(_ phrase: String) -> String {
  "\(capitalize(phrase)), please"
}

func ithLetter(_ line: String, i: Int) -> Character {
  guard let index = line.index(line.startIndex, offsetBy: i, limitedBy: line.endIndex) else {
    return " "
  }
  
  return line[index]
}

func secretRoomPassword(_ phrase: String) -> String {
  "\(phrase.uppercased())!"
}
