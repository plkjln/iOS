//Reverse a string in array by taking input from console

let string = readLine()!.characters.split(" ").map(String.init) //takes input from console in a string
var inReverse = ""
for letter in string {
    inReverse = "\(letter)" + " " + inReverse
}
print(inReverse)

/* INPUT
-> Swift
OUTPUT
-> tfiwS
*/
