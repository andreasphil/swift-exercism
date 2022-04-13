// Define the 'expectedMinutesInOven' constant
let expectedMinutesInOven = 40

// Define the 'remainingMinutesInOven' function
func remainingMinutesInOven(elapsedMinutes: Int) -> Int {
  expectedMinutesInOven - elapsedMinutes
}

// Define the 'preparationTimeInMinutes' function
func preparationTimeInMinutes(layers: Int) -> Int {
  layers * 2
}

// Define the 'totalTimeInMinutes' function
func totalTimeInMinutes(layers: Int, elapsedMinutes: Int) -> Int {
  preparationTimeInMinutes(layers: layers) + elapsedMinutes
}