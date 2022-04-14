typealias Quantities = (noodles: Int, sauce: Double)

func remainingMinutesInOven(elapsedMinutes: Int, expectedMinutesInOven: Int = 40) -> Int {
    expectedMinutesInOven - elapsedMinutes
}

func preparationTimeInMinutes(layers: String...) -> Int {
    layers.count * 2
}

func quantities(layers: String...) -> Quantities {
    layers.reduce((noodles: 0, sauce: 0.0)) { partialResult, layer in
        var (noodles, sauce) = partialResult
        
        switch layer {
        case "noodles": noodles += 3
        case "sauce": sauce += 0.2
        default: ()
        }
        
        return (noodles, sauce)
    }
}

func toOz(_ amount: inout Quantities) {
    amount.sauce = amount.sauce * 33.814
}

func redWine(layers: String...) -> Bool {
    typealias LayerCount = (whiteLayers: Int, redLayers: Int)
    let (whiteLayers, redLayers): LayerCount = layers.reduce(into: (0, 0)) { (partialResult, layer) in
        switch layer {
        case "mozzarella", "ricotta", "béchamel": partialResult.0 += 1
        case "meat", "sauce": partialResult.1 += 1
        default: ()
        }
    }
    
    return redLayers >= whiteLayers 
}