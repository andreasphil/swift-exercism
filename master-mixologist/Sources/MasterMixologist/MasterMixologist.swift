func timeToPrepare(drinks: [String]) -> Double {
  var duration = 0.0
  for drink in drinks {
    switch drink {
    case "beer", "soda", "water": duration += 0.5
    case "shot": duration += 1.0
    case "mixed drink": duration += 1.5
    case "fancy drink": duration += 2.5
    case "frozen drink": duration += 3.0
    default: ()
    }
  }
  
  return duration
}

func makeWedges(needed: Int, limes: [String]) -> Int {
  var limes = limes
  var wegdes = 0
  var usedLimes = 0
  
  while (wegdes < needed && !limes.isEmpty) {
    switch(limes.removeFirst()) {
    case "small": wegdes += 6
    case "medium": wegdes += 8
    case "large": wegdes += 10
    default: ()
    }
    usedLimes += 1
  }
  
  return usedLimes
}

func finishShift(minutesLeft: Int, remainingOrders: [[String]]) -> [[String]] {
  var remainingOrders = remainingOrders
  var minutes = Double(minutesLeft)
  
  repeat {
    let time = timeToPrepare(drinks: remainingOrders.removeFirst())
    minutes -= time
  } while minutes > 0 && !remainingOrders.isEmpty
  
  return remainingOrders
}

func orderTracker(orders: [(drink: String, time: String)]) -> (
  beer: (first: String, last: String, total: Int)?, soda: (first: String, last: String, total: Int)?
) {
  var result: [String: (first: String, last: String, total: Int)] = [:]
  
  for (drink, time) in orders {
    if result[drink] != nil {
      result[drink]!.last = time
      result[drink]!.total += 1
    } else {
      result[drink] = (first: time, last: time, total: 1)
    }
  }
  
  return (beer: result["beer"], soda: result["soda"])
}
