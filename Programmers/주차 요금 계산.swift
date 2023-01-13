import Foundation

func solution(_ fees:[Int], _ records:[String]) -> [Int] {
  let defaultMin = fees[0]
  let defaultFee = fees[1]
  let unitOfTime = fees[2]
  let unitOfFee = fees[3]
  
  var parkingCar: [Int: Car] = [:] // num: Car
  
  let refinedRecords = records.map { $0.components(separatedBy: " ") }
  
  for car in refinedRecords {
    let time = car[0]
    let num = Int(car[1])!
    let inOrOut = car[2]
    
    if inOrOut == "IN" {
      if parkingCar[num] == nil {
        parkingCar[num] = Car(defaultMin: defaultMin, defaultFee: defaultFee, unitOfTime: unitOfTime, unitOfFee: unitOfFee, enterTime: time, cumulativeTime: 0)
      } else {
        parkingCar[num]!.enterTime = time
      }
    } else {
      let enterT = parkingCar[num]!.enterTime!
      let leaveT = time
      parkingCar[num]?.cumulativeTime += timeDifference(from: enterT, to: leaveT)
      parkingCar[num]?.enterTime = nil
    }
  }
  
  var addTimes = parkingCar.filter { $1.enterTime != nil }.map { ($0, timeDifference(from: $1.enterTime!, to: "23:59")) }
  
  for (num, addTime) in addTimes {
    parkingCar[num]!.cumulativeTime += addTime
  }
  
  return parkingCar.sorted(by: { $0.key < $1.key }).map { $0.value.fee }
}

func timeDifference(from start: String, to end: String) -> Int {
  let formatter = DateFormatter()
  formatter.dateFormat = "HH:mm"
  let endDate = formatter.date(from: end)!
  let startDate = formatter.date(from: start)!
  
  let seconds = endDate.timeIntervalSince(startDate)
  let minute = (seconds / 60)
  return Int(minute)
}

struct Car {
  let defaultMin: Int
  let defaultFee: Int
  let unitOfTime: Int
  let unitOfFee: Int
  var enterTime: String?
  var cumulativeTime: Int
  var fee: Int {
    if cumulativeTime <= defaultMin {
      return defaultFee
    } else {
      let additional = cumulativeTime - defaultMin
      if additional % unitOfTime == 0 {
        return (additional / unitOfTime) * unitOfFee + defaultFee
      } else {
        return (additional / unitOfTime) * unitOfFee + defaultFee + unitOfFee
      }
    }
  }
}
