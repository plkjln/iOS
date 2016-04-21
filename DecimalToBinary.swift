//Decimal to Binary conversion and printing the maximum number of consecutive
//The binary representation of 5 is 101, so the maximum number of consecutive 1's is 1.

import Foundation

// Decimal to Binary conversion
let number = Int(readLine()!)!
let str = String(number, radix: 2)

//String conversion to Array
let chars = str.characters.map { String($0) }
var count = 0
var max = 0

// Calculating maximum sequence consecutive of 1's in the array "chars" 
for i in 0...chars.count - 1{
    if chars[i] == "1"{
        count += 1
    } else{
        count = 0
    }
    if (max < count){
        max = count
    }
}
print (max)

/*INPUT
->6   // Binary: 110
OUTPUT
->2

INPUT
->1911 // Binary: 11101110111
OUTPUT
->3
*/
