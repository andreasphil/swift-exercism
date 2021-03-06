func newScoreBoard() -> [String: Int] {
    [String: Int]()
}

func addPlayer(_ scores: inout [String: Int], _ name: String, _ score: Int = 0) {
    scores[name] = score
}

func removePlayer(_ scores: inout [String: Int], _ name: String) {
    scores.removeValue(forKey: name)
}

func resetScore(_ scores: inout [String: Int], _ name: String) {
    guard scores[name] != nil else { return }
    scores[name] = 0
}

func updateScore(_ scores: inout [String: Int], _ name: String, _ delta: Int) {
    guard let currentScore = scores[name] else { return }
    scores[name] = currentScore + delta
}

func orderByPlayers(_ scores: [String: Int]) -> [(String, Int)] {
    scores.sorted(by: { $0.0 < $1.0 })
}

func orderByScores(_ scores: [String: Int]) -> [(String, Int)] {
    scores.sorted(by: { $0.1 > $1.1 })
}
