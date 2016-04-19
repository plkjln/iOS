//Simple example to take a dictornary and print the key & value of the keys that are in the dictionary, else print "not found"
//Dictionary: phone book (name:Number)

import Foundation

var phoneBook: [String:Int] = ["sam": 99912222,
                               "tom": 11122222,
                               "harry": 12299933 ]
var arr:[String] = ["sam", "edward", "harry"]

var res = " "
for (myKey,myValue) in phoneBook {
    if myValue != 0 {
        if arr.contains(myKey)  {
            print("\(myKey) = \(String(myValue))")
        } else {
            print("Not found")
        }
    }
}
