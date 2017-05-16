//
//  DateFormatterStyle.swift
//  ITSupport
//
//  Created by Ratnesh Jain on 16/05/17.
//  Copyright © 2017 Ratnesh Jain. All rights reserved.
//

import Foundation


/// DateFormatterStyle
///
/// - dayMonthYear: `02 May 2017`
/// - hourMinAMPM: `01:27 PM`
/// - hourMinSec: `01:27:24`
/// - shordDayName: `Tues ->	The day of week in the month`
/// - fullDayName:  `Tuesday ->	The full name of the day`
/// - monthDigitWithoutZeroPading: `2`
/// - monthDigitWithZeroPading: `02`
/// - shortMonthName: `Dec`
/// - fullMonthName: `December`
/// - monthInitial: `D`
/// - yearWithZeroPading: `2008`
/// - year: `08`
/// - fourDigitYear: `2008`
/// - hour12WithoutZeroPading: `4`
/// - hour12: `04`
/// - hour24WithoutZeroPading: `16`
/// - hour24: `16`
/// - minsWithoutZeroPading: `35`
/// - mins: `35`
/// - secondsWithZeroPading: `8`
/// - seconds: `08`
enum DateFormatStyle: String {
    
    case dayMonthYear = "dd MMM yyyy"
    case hourMinAMPM = "hh:mm a"
    case hourMinSec = "hh:mm:ss"
    
    case meridiem = "a"
    
    case shordDayName = "E"
    case fullDayName = "EEEE"
    
    case monthDigitWithoutZeroPading = "M"
    case monthDigitWithZeroPading = "MM"
    case shortMonthName = "MMM"
    case fullMonthName = "MMMM"
    case monthInitial = "MMMMM"
    
    case yearWithZeroPading = "y"
    case year = "yy"
    case fourDigitYear = "yyyy"
    
    case hour12WithoutZeroPading = "h"
    case hour12 = "hh"
    case hour24WithoutZeroPading = "H"
    case hour24 = "HH"
    
    case minsWithoutZeroPading = "m"
    case mins = "mm"
    
    case secondsWithZeroPading = "ss"
    case seconds = "s"
    
    static func unified(by saperator:String, OfStyles styles: DateFormatStyle...) -> String {
        return styles.map{$0.rawValue}.joined(separator: saperator)
    }
}
