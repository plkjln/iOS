//  Pangrams
//
//  Created by Plk Jln on 4/18/16.
//  Copyright © 2016 PJln. All rights reserved.

import Foundation

//pangram: the String contains all the letters of the English alphabet.

var a1 = ["a","b","c","d","e","f","g","h","i","j","k","l","m",
        "n","o","p","q","r","s","t","u","v","w","x","y","z"]
var arr = String(readLine()!.characters.split(" ").map{String($0)}) // To take sentence from the console

var flag: Int = 1
for var i in 0..<26 {
    if arr.localizedCaseInsensitiveContainsString(a1[i]) != true {
        flag = 0
    }
}
if ( flag != 0 ) {
    print("Pangram: \(arr)")
} else {
    print("Not a panagram")
}
extension String {
    var word: [String] {
        return componentsSeparatedByCharactersInSet(.punctuationCharacterSet()).joinWithSeparator("").componentsSeparatedByString(" ")
    }
}
