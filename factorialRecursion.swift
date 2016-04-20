// Simple code for displaying factorial on any number inputted by the user. The factorial is calculated using recursion.
/*factorial(3)=3×factorial(2)
factorial(2)=2×factorial(1)
factorial(1)=1
*/

import Foundation

var num = Int(readLine()!)!
if num == 0 {
    num = Int(readLine()!)!
}
func factorial(N: Int) -> Int {
    if N == 1 {
        return 1
    } else {
        return N * factorial(N - 1)
    }
}
print(factorial(num))

/*
INPUT : 3
OUTPUT: 6
*/
