//
//  main.swift
//  libraryFine
//
//  Created by Abhay Dokania on 5/9/16.
//  Copyright © 2016 Abhay Dokania. All rights reserved.
//
/* Print the library fine
 If the book is returned on or before the expected return date, no fine will be charged (i.e.: fine=0).
 If the book is returned after the expected return day but still within the same calendar month and year as the expected return date, fine=15 × (the number of days late).
 If the book is returned after the expected return month but still within the same calendar year as the expected return date, the fine=500 × (the number of months late).
 If the book is returned after the calendar year in which it was expected, there is a fixed fine of 10000.
*/


import Foundation

extension NSDate {
    func yearsFrom(date:NSDate) -> Int{
        return NSCalendar.currentCalendar().components(.Year, fromDate: date, toDate: self, options: []).year
    }
    func monthsFrom(date:NSDate) -> Int{
        return NSCalendar.currentCalendar().components(.Month, fromDate: date, toDate: self, options: []).month
    }
    func daysFrom(date:NSDate) -> Int{
        return NSCalendar.currentCalendar().components(.Day, fromDate: date, toDate: self, options: []).day
    }
    
    func offsetFrom(date:NSDate) -> String {
        if yearsFrom(date)   > 0 { return "\(yearsFrom(date))y"   }
        if monthsFrom(date)  > 0 { return "\(monthsFrom(date))M"  }
        if daysFrom(date)    > 0 { return "\(daysFrom(date))d"    }
        return ""
    }
}


var fine = 0
// Actual Library book return date
let arr = readLine()!.characters.split(" ").map{Int(String($0))!} // DD MM YYYY // 9 6 2015 // 26 12 2011
let day = arr[0]
let mnth = arr[1]
let year = arr[2]
let date1 = NSCalendar.currentCalendar().dateWithEra(1, year: year, month: mnth, day: day, hour: 0, minute: 0, second: 0, nanosecond: 0)!

// Expected Library due date
let arr2 = readLine()!.characters.split(" ").map{Int(String($0))!}// DD MM YYYY
let year2 = arr2[2]
let mnth2 = arr2[1]
let day2 = arr2[0]
let date2 = NSCalendar.currentCalendar().dateWithEra(1, year: year2, month: mnth2, day: day2, hour: 0, minute: 0, second: 0, nanosecond: 0)!

//Difference in the dates for the book returned
let years  = date1.yearsFrom(date2)
let months = date1.monthsFrom(date2)
let days   = date1.daysFrom(date2)

//print("Year: \(years), Months: \(months), Days: \(days)")
if years <= 0 && months <= 0 && days <= 0{
    fine = 0
}
if years <= 0 && months <= 0 && days > 0{
    fine = 15 * days
}
if years <= 0 && months > 0 {
    fine = 500 * months
}
if years > 0 {
    fine = 10000
}
print(fine)

/* INPUT 
 9 6 2015   // Actual returned date of the book
 6 6 2015   // Expected return date of the book
 Output
 45 //fine : 15 * (9-6)
