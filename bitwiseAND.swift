//
//Given set S={1,2,3,…,N}. Find two integers, A and B (where A<B), from set S such that the value of A&B is the maximum possible 
//and also less than a given integer, K. In this case, & represents the bitwise AND operator.
// Example: N=5,K=2, S={1,2,3,4,5}: 5 and 2 are inputted by the user as N being max number in series & K being max value of A&B
// print the maximum possible value of A&B on a new line that is less than K
//

var t = Int(readLine()!)! // Multiple inputs can be taken by the user to calculate individual A&B
while t-- > 0 {
    var data = readLine()!.characters.split(" ").map{Int(String($0))!} // Inputting: N K (Max series, Limit of A&B)
    var max = data[0]
    var limit = data[1]
    var a: UIntMax = 0
    var b: UIntMax = 0
    var maxpos = a & b
    print("Max: \(max), Limit: \(limit)")
    for i in 1...max {
        var j = i+1
        while j <= max {
            var bitwise = a & b
            a = UIntMax(i)
            b = UIntMax(j)
            bitwise = a & b
            print("A= \(i), B= \(j), A&B= \(bitwise), LIMIT: \(UIntMax(limit))")
            if bitwise < UIntMax(limit) && bitwise > maxpos {
                maxpos = bitwise
            }
            j += 1
        }
    }
    print(maxpos) // Output A&B < K
}

/*
 INPUT : 
 5 2
OUPUT:
 Max: 5, Limit: 2
 A= 1, B= 2, A&B= 0, LIMIT: 2
 A= 1, B= 3, A&B= 1, LIMIT: 2
 A= 1, B= 4, A&B= 0, LIMIT: 2
 A= 1, B= 5, A&B= 1, LIMIT: 2
 A= 2, B= 3, A&B= 2, LIMIT: 2
 A= 2, B= 4, A&B= 0, LIMIT: 2
 A= 2, B= 5, A&B= 0, LIMIT: 2
 A= 3, B= 4, A&B= 0, LIMIT: 2
 A= 3, B= 5, A&B= 1, LIMIT: 2
 A= 4, B= 5, A&B= 4, LIMIT: 2

 1 //The maximum possible bitwise AND from the series
 Program ended with exit code: 0
 */
