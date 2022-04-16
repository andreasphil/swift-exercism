let flip: ((String, String, String)) -> (String, String, String) = { wires in
  return (wires.1, wires.0, wires.2)
}
 
let rotate: ((String, String, String)) -> (String, String, String) = { wires in
  return (wires.1, wires.2, wires.0)
}

extension UInt8 {
  func toBitSequence() -> [Self] {
    var sequence: [Self] = []
    var remainder = self
    
    for _ in 0..<self.bitWidth {
      sequence.append(remainder % 2)
      remainder /= 2
    }
    
    return sequence
  }
}

func makeShuffle(
  flipper: @escaping ((String, String, String)) -> (String, String, String),
  rotator: @escaping ((String, String, String)) -> (String, String, String)
) -> (UInt8, (String, String, String)) -> (String, String, String) {
  return { id, wires in
    var wires = wires
    for bit in id.toBitSequence() {
      if (bit == 0) {
        wires = flipper(wires)
      } else if (bit == 1) {
        wires = rotator(wires)
      }
    }
    
    return wires
  }
}
