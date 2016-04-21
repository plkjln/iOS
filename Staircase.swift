//  Staircase.swift
//  Staircase
//
//  Created by PLKjln on 4/12/16.
//  Copyright © 2016 P Jln. All rights reserved.
//
// Drawing a staircase structure. Print a staircase of height N that consists of # symbols and spaces. 

import Foundation

// read the integer n
var n = Int(readLine()!)!
var i = 0, j = 0

for(i=0;i<n;i++){
    for(j=n-1;j>=0;j--)
    {
        if(i>=j) {
            print("#",terminator:"")
        } else {
            print(" ",terminator:"")
        }
    }
    print("")
}

/*

*/INPUT
-> 10
OUTPUT
         #
        ##
       ###
      ####
     #####
    ######
   #######
  ########
 #########
##########
Program ended with exit code: 0
*/
