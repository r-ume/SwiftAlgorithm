//: Playground - noun: a place where people can play

import UIKit

class Employee {
    var name: String
    
    init(name: String) {
        self.name = name
    }
}

class HourlyEmployee: Employee {
    let hourlyWage: Double
    var hoursWorked: Double
    
    init(name: String, hourlyWage wage: Double, hoursWorked hours: Double) {
        self.hourlyWage = wage
        self.hoursWorked = hours
        super.init(name: name)
    }
    
    func payWages() -> Double{
        return hourlyWage * hoursWorked
    }
}

class SalariedEmployee: Employee {
    let salary: Double
    
    init(name: String, salary: Double) {
        self.salary = salary
        super.init(name: name)
    }
    
    func paySalary() -> Double{
        return salary
    }
}

let employees = [
    HourlyEmployee(name: "Elvis Presley", hourlyWage:  299.99, hoursWorked: 100.00),
    SalariedEmployee(name: "Diana Prince", salary: 120000.00)
]

for employee in employees{
    
    // "is" is a type checker
    if employee is HourlyEmployee{
        let hourlyEmployee = employee as! HourlyEmployee
        hourlyEmployee.payWages()
    }
    
    if employee is SalariedEmployee{
        if let salariedEmployee = employee as? SalariedEmployee{
            salariedEmployee?.paySalary()
        }
    }
}

