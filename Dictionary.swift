//To take a dictornary and print the key & value of the keys that are in the dictionary, else print "not found"
//Dictionary: phone book (name:Number)

//Approach A : Dictionary with constant values and static array of names to be searched.
import Foundation
var phoneBook: [String:Int] = ["sam": 99912222,
                               "tom": 11122222,
                               "harry": 12299933 ]
var arr:[String] = ["sam", "edward", "harry"]

for (myKey,myValue) in phoneBook {
    if myValue != 0 {
        if arr.contains(myKey)  {
            print("\(myKey) = \(String(myValue))")
        } else {
            print("Not found")
        }
    }
}

//Approach B:  Dictionary values are inputted from the console along with the names to be serached.
//Note: All the dictionary values are inputted together in the console. 
//Each record of dictionary is separated by space, first is Name and after the space is Phone#. Different records are on different lines. 

let n = Int(readLine()!)!
var phoneBook: [String: Int] = Dictionary()

for i in 0 ..< n {
    let namesplit = readLine()!.characters.split(" ")
    var name = String(namesplit.first!)
    var phone = Int(String(namesplit.last!))!
    phoneBook[name] = phone
}
var search: String? = readLine()
while search != nil {
    if let val = phoneBook[search!] {
        print("\(search!)=\(val)")
    } else {
        print("Not found")
    }
    search = readLine()
}

/* INPUT
->3
->sam 99912222
->tom 11122222
->harry 12299933
->sam
->edward
->harry
OUTPUT
->sam=99912222
->Not found
->harry=122999333
*/
