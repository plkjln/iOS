//String, S, of length N that is indexed from 0 to N−1,
//print its even-indexed and odd-indexed characters as 2 space-separated strings on a single line.
//Note: 0 is considered to be an even index

//Approach (A)
//Desc: The String S has multiple words separated by new line
public func getLine() -> String {
    var buf = String()
    var c = getchar()
    // 10 is ascii code for newline
    // TODO: add |- && count(buf) < Int.max -| when 1.2 is supported
    while c != EOF && c != 10 {
        buf.append(UnicodeScalar(UInt32(c)))
        c = getchar()
    }
    return buf
}
var n = 2, i = 0
var odd = "", even = "", numO = "", numE = ""

for i in 0..<n {
    var arr = getLine()
    var str:String = String(arr)
    var j = 0
    //print("str:\(str), ARR: \(arr), str.characters.count: \(str.characters.count)")
    
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
    numO += odd + " " + even + "\r\n"
    odd = ""
    even = ""
}
print("\(numO)")

// INPUT
//-> SWIFT
//-> is
//-> awesome
//OUTPUT
//-> SIT WF
//-> i s
//-> aeoe wsm

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

