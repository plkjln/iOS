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

var Phonebook = [String:String]()
var length = IntMax(readLine()!)!

for x in 1...length {
    var namesplit = readLine()!.characters.split(" ")
    var name = String(namesplit.first!)
    var phone = String(namesplit.last!)
    Phonebook[name] = phone
}
for x in 1...length {
    var searchName = readLine()!
    if Phonebook[searchName] != nil && searchName !=  "" {
        if var contains = Phonebook[searchName] {
            print("\(searchName)=\(contains)")
        } else {
            print("Not found")
        }
    } else {
        print("Not found")
    }
 }
