func dailyRateFrom(hourlyRate: Int) -> Double {
  Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  var total = dailyRateFrom(hourlyRate: hourlyRate) * 22.0
  total = total * ((100.0 - discount) / 100.0)
  return total.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let discountedDailyRate = dailyRateFrom(hourlyRate: hourlyRate) * ((100.0 - discount) / 100.0)
  let days = Int(budget / discountedDailyRate)
  return Double(days)
}
