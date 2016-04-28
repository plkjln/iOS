//
//  findDigit.swift
//  DigitSearch
//
//  Created by PJln on 4/20/16.
//  Copyright © 2016 Plk Jln. All rights reserved.
//

import Foundation

/*Given an integer, N, traverse its digits (d1,d2,...,dn) and determine how many digits evenly divide N (i.e.: count the number of times N divided by each digit di has a remainder of 0). Print the number of evenly divisible digits.

 Note: Each digit is considered to be unique, so each occurrence of the same evenly divisible digit should be counted (i.e.: for N=111, the answer is 3).
INPUT:
 The first line is an integer, T, indicating the number of test cases.
 The T subsequent lines each contain an integer, N.
*/

var t = Int(readLine()!)! // Total inputs/numbers of be given

while (t-- > 0) {
    
    let input = Int(readLine()!)! //number from which the digits are to be searched
    var rem:Int = input / 10    // Remaining numbers of the inputted number after the last digit is removed
    var lastD:Int = input % 10 // Last Digit on the inputted number
    var c = 0
    
    repeat{
        print("INITIAL R num:\(rem), Last Digit: \(lastD)")
        var check: Int = 0
        if lastD != 0 {
            check = input % lastD // check if the actual number is divisible by the last digit
            if check == 0 || check == input{
                c += 1
            }
        }
        lastD = rem % 10
        rem = rem / 10
        if rem == 0 && lastD != 0{
            check = input % lastD
            if check == 0 || check == input{
                c += 1
            }
        }
        print("Now R num:\(rem), Last Digit: \(lastD)")
    }while (rem > 0)
   
    print("Digits Even divisible: \(c)")
}

/* INPUT
2 // t: total inputs that will be provided for search
2 // first number
OUTPUT
INITIAL R num:0, Last Digit: 2
Now R num:0, Last Digit: 0
Digits Even divisible: 1
INPUT: 41 // second number
OUTPUT
INITIAL R num:4, Last Digit: 1
Now R num:0, Last Digit: 4
Digits Even divisible: 1
Program ended with exit code: 0

INPUT
1 // t
150
OUTPUT
INITIAL R num:15, Last Digit: 0
Now R num:1, Last Digit: 5
INITIAL R num:1, Last Digit: 5
Now R num:0, Last Digit: 1
Digits Even divisible: 2
Program ended with exit code: 0
*/
