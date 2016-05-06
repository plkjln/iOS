//
//  main.swift
//  primeNumberTimeComp
//
//  Created by P Jln on 5/6/16.
//  Copyright © 2016 Plk Jln. All rights reserved.
//

import Foundation


// Running Time and Complexity:  O(√n) primality algorithm
// A prime is a natural number greater than 1 that has no positive divisors other than 1 and itself. Given a number, n, 
determine and print whether it is Prime or Not.

var t = Int(readLine()!)! // Total numbers to be entered by the user for checking

while t-- > 0 {
    var num = Int(readLine()!)! // current number entered by console to check "prime"
    var sqrtN = sqrt(Double(num))
    var prime = false
    
    if num == 1 {
        prime = true
    } else if num == 2 || num == 3 {
        prime = false
    } else {
        for var i in 2...Int(sqrtN) {
            if num % i == 0 {
                prime = true
            }
        }
    }
    
    if prime == false {
        print("Prime")
    } else {
        print("Not prime")
    }
}

/* INPUT
3
OUTPUT-> Prime
21
OUTPUT-> Not prime
1
OUTPUT-> Not prime

*/
