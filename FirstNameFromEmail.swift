//
// RegEx, Patterns, and Intro to Databases
// Print the first names in alphabetical order, each name in a new line from a set of first name & email id that has a gmail account only.
//

var t = Int(readLine()!)! // Number of inputs to be taken
var result = [String]()
while t-- > 0 {
    var table = readLine()!.characters.split(" ") // Takes the first name, space, emailid of the person
    var mailid = String(table.last!) // Extracting email id from table
    var email = mailid.characters.split("@")
    //Checking if the email account is GMAIL
    if String(email.last!) == "gmail.com" {
        result.append(String(table.first!)) 
    }
}
//Alphabetical Sort of first names
result.sortInPlace()
for name in result {
print(name)
}

/*INPUT
 6 // t
 riya riya@gmail.com
 julia julia@julia.me
 julia sjulia@gmail.com
 julia julia@gmail.com
 samantha samantha@gmail.com
 tanya tanya@gmail.com
 
 OUTPUT
 julia
 julia
 riya
 samantha
 tanya
 */
