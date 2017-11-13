import UIKit

enum Day: Int{
    case Monday = 1, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday

    init(){
        self = .Sunday
    }
    
    func daysUntilWeekend() -> Int{
        return Day.Saturday.rawValue - self.rawValue
    }
    
    func dayString() -> String{
        switch self{
            case .Monday:
                return "Monday"
            default:
                return "other day"
        }
    }
}

var today = Day()
today.rawValue
today.dayString()

/*var today = Day.Monday

today.daysUntilWeekend(today)

today = .Friday

today.daysUntilWeekend

var holiday = Day.Saturday
holiday.daysUntilWeekend()

*/



/*

Day.Sunday.rawValue
daysUntilWeekend(Day.Monday)

if let firstDayOfWeek = Day(rawValue: 1){
    daysUntilWeekend(firstDayOfWeek)
}
*/

// Associated values

enum Status{
    case Success(String)
    case Failure(String)
}

let downloadStatus = Status.Failure("Network Connection unavaible")

switch downloadStatus{
    case .Success(let success):
        print(success)
    case .Failure(let failure):
        print(failure)
}
