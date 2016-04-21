/*A simple creation of Class "Person" with property "age" and method "amiold" to determine whether the person is young, 
teenager or old by the current age and their age after 3 years. The current age id inputted from the console.*/

//Class VS Instance

class Person {
    var age : Int = 0
    init (initial_Age:Int){
        // Add some more code to run some checks on initialAge
        if initial_Age < 0 {
            age = 0
            print("Age is not valid, setting age to 0.")
        } else {
            age = initial_Age
        }
    }
    func amIOld (){
        // Do some computations in here and print out the correct statement to the console
        switch age {
            case _ where age < 13 : print("You are young.")
            case 13..<18: print("You are a teenager.")
            case _ where age >= 18: print("You are old.")
            default: print("")
        }
    }
    func yearPasses(){
        // Increment the age of the person in here
        age = age + 1
    }
}
print("Enter number of person ages you wish to check: ",terminator:"")
var T = Int(readLine(stripNewline: true)!)!
while T-- > 0 {
    print("Enter age: ",terminator:"")
    let age = Int(readLine(stripNewline: true)!)!
    var p = Person (initial_Age: age)
    p.amIOld()
    
    // After 3 years the age of the person changes
    for i in 1 ... 3{
        p.yearPasses()
    }
    print ("After 3 Years passed; age is \(p.age)");
    p.amIOld()
    print("")
} 

/*
INPUT
Enter number of person ages you wish to check: 2
Enter age: 20
OUTPUT
You are old.
After 3 Years passed; age is 23
You are old.

INPUT
Enter age: 15
OUTPUT
You are a teenager.
After 3 Years passed; age is 18
You are old.*/
