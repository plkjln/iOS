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

//Approach B:  Dictionary values are inputedt from the console along with the names to be serached.
var Phonebook = [String:String]()
var length = IntMax(readLine()!)!
for x in 1...length {
    var namesplit = readLine()!.characters.split(" ")
    Phonebook[String(namesplit.first!)] = String(namesplit.last!)
}
for x in 1...length {
    var name = readLine()!
    if name !=  "" {
        if var contains = Phonebook[name] {
            print("\(name)=\(contains)")
        } else {
            print("Not found")
        }
    }
}
