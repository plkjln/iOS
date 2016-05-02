//
//  generics.swift
//
//  Created by P Jln on 5/2/16.
//  Copyright © 2016 Plk Jln. All rights reserved.
//

import Foundation

//Generics: a single generic function named printArray; this function takes an array of generic elements as a parameter.
// printArray function should print each element of its generic array parameter on a new line.

// Start of struct Printer
struct Printer<type> {
    
    func printArray(a:[type]){
        //OPTION 1
        //for (i,char) in a.enumerate() {
          //  print(char)
        //}
        //OPTION 2
        for str in a {
         print(str)
        }
    }
} // End of struct Printer

let vInt = [1, 2, 3] // Integer Input
let vString = ["Hello", "World"] // String Input

Printer<Int>().printArray(vInt)
Printer<String>().printArray(vString)

/*OUTPUT
 1
 2
 3
 Hello
 World
 */
