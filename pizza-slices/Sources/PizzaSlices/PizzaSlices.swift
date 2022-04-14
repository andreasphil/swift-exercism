import Foundation

func sliceSize(diameter: Double?, slices: Int?) -> Double? {
    guard 
        let safeDiameter = diameter,
        let safeSlices = slices,
        safeDiameter >= 0 && safeSlices > 0 
    else { return nil }
    
    let surface = Double.pi * pow(safeDiameter / 2, 2)
    let sliceSize = surface / Double(safeSlices)
    
    return sliceSize
}

func biggestSlice(
    diameterA: String, slicesA: String,
    diameterB: String, slicesB: String
) -> String {
    let sliceSizeA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
    let sliceSizeB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
    var biggerSliceName: String; 
    
    if sliceSizeA == nil && sliceSizeB == nil || sliceSizeA == sliceSizeB {
        biggerSliceName = "Neither slice"
    } else if sliceSizeA == nil {    
        biggerSliceName = "Slice B"
    } else if sliceSizeB == nil {    
        biggerSliceName = "Slice A"
    } else {
        biggerSliceName = sliceSizeA! > sliceSizeB! ? "Slice A" : "Slice B"
    }
    
    return "\(biggerSliceName) is bigger"
}