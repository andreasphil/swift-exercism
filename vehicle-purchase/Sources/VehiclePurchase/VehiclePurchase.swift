func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
    let monthlyPayment = price / (5.0 * 12.0)
    let diff = monthlyBudget - monthlyPayment
    
    if diff < -10.0 {
        return "Darn! No \(vehicle) for me"
    } else if diff <= 10.0 {
        return "I'll have to be frugal if I want a \(vehicle)"
    } else {
        return "Yes! I'm getting a \(vehicle)"
    }
}

func licenseType(numberOfWheels wheels: Int) -> String {
    var licenseName: String?
    
    switch wheels {
    case 2, 3:
        licenseName = "a motorcycle license"
    case 4, 6:
        licenseName = "an automobile license"
    case 18:
        licenseName = "a commercial trucking license"
    default:
        ()
    }
    
    guard licenseName != nil else {
        return "We do not issue licenses for those types of vehicles"
    }
    
    return "You will need \(licenseName!) for your vehicle"
}

func registrationFee(msrp: Int, yearsOld: Int) -> Int {
    guard yearsOld < 10 else {
        return 25
    }
    
    let basePrice = Double(max(msrp, 25_000))
    let reductionPerYear = basePrice * 0.1
    var fee = basePrice
    
    for _ in 0..<yearsOld {
        fee -= reductionPerYear
    }
    
    fee = (fee / 100).rounded(.down)
    
    return Int(fee)
}
