// Anagram

import Foundation

func lettersUsed(s:String) -> [Int] {
    let sc = s.uppercaseString.unicodeScalars
    var i = sc.startIndex
    var res:[Int] = []
    for _ in 0..<26 {
        res.append(0)
    }
    while (i < sc.endIndex) {
        let c : Int = Int(sc[i].value) - 65
        if (c >= 0 && c <= 25) { res[c] = res[c] + 1 }
        i = i.advancedBy(1)
    }
    return res
}
var str1 = readLine()!
var str2 = readLine()!
var freq_a = lettersUsed(str1)
var freq_b = lettersUsed(str2)
var c = 0

for i in 0..<26{
    c = c + abs(freq_a[i] - freq_b[i])
}
print(c)
