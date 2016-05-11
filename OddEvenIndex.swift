//String, S, of length N that is indexed from 0 to N−1,
//print its even-indexed and odd-indexed characters as 2 space-separated strings on a single line.
//Note: 0 is considered to be an even index

//Approach (A)
//Desc: The String S has multiple words separated by new line
var n = Int(readLine()!)!

while n-- > 0 {
    var odd = "", even = "", res = "", j = 0
    var chars = readLine()!.characters.map { String($0) }
    
    while  j < chars.count {
        if (j % 2 == 0) {
            even += chars[j]
        } else {
            odd += chars[j]
        }
        j = j+1
    }
    res += even + " " + odd //+ "\r\n"
    print(res)
}

//INPUT-> 3 // total string to be inputted (n)
//INPUT-> SWIFT
//OUTPUT-> SIT WF
//INPUT-> is
//OUTPUT-> i s
//INPUT-> awesome
//OUTPUT-> aeoe wsm

//Approach (B)
//Desc: The String S has multiple words separated by space.
 var n = Int(readLine()!)!
 var arr = readLine()!.characters.split(" ").map{String($0)}
 for var i in 0..<n {
 var str: String = "", odd = "", even = ""
 var j: Int = 0
 str = arr[i]
 while  j < str.characters.count {
 if (j % 2 == 0) {
 var charo = String(str[str.startIndex.advancedBy(j)])
 odd += charo
 } else {
    var chare = String(str[str.startIndex.advancedBy(j)])
    even += chare
 }
 j = j+1
 }
 print("\(odd) \(even)")
 }
// INPUT
//-> SWIFT is awesome
//OUTPUT
//-> SIT WF
//-> i s
//-> aeoe wsm

