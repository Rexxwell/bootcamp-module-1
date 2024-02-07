// MODULE 1 - PART 1: Variables and Data Types
//
// Written by Abdulaziz Albahar
//
import Foundation

/*
 TIPS:
 - Click on the line number to the left of this to run all the code from line 1 to the line number clicked on the console. Doing so also shows you the value of all variables on the grey space to your right.
 - To see the print results of the execution (when doing it as above), open the console by clicking on the rectangular-ish icon on the bottom right of the screen.
 */

/*
 Swift offers a range of data types. In this section, we'll be focusing on the following:
     - String: represents a collection of characters
     - Int: any integer value (whole number)
     - Float: a decimal number with a precision/limit of 7 decimal digits
     - Double: a decimal number with a precision/limit of 15 decimal digits
     - Bool: a logical proposition, can only ever be true or false

 Let's look at examples where we declare variables using the learned data types.
 */

var piAsString: String = "PI - 3.14"
var piAsFloat: Float = 3.14159265358979
var piAsDouble: Double = 3.14159265358979
var piRoundedToAnInteger: Int = 3

let weDoLovePI: Bool = true

/*
 A reminder that the 'let' keyword declares a constant (immutable variable). The 'var' keyword declares a variable (mutable).
 */

print(
    """
    PI as a String: \(piAsString)
    PI as a Float: \(piAsFloat)
    PI as a Double: \(piAsDouble)
    (notice the difference in precision between the float and double variable?)
    PI rounded to an Integer: \(piRoundedToAnInteger)
    """
)
// <- [CLICK HERE TO RUN ME]

// TODO: After a quick refresher of data types, we have a series of challenges. Declare variables using the given prompts, be sure to adhere to all constraints of the prompt. As we've done above, explicitly state the type whenever you declare a variable:

// PROMPT 1: Declare a mutable variable called 'myName' of type String with initial value “Peter”.

var myName: String = "Peter"
print(myName)

// PROMPT 2: Declare a constant called 'favouriteNumber' of type Int with initial value 99.

let favouriteNumber: Int = 99
print(favouriteNumber)

// PROMPT 3: Declare a mutable variable called 'myMother' of type Optional String with initial value “Mary”.

var myMother: String? = "Mary"
print(myMother)

// PROMPT 4: Declare a constant called 'collegeGPA' of type Optional Double with NO VALUE (what keyword do we use to represent this?).

let collegeGPA: Double? = nil
print(collegeGPA)

// PROMPT 5: Declare a mutable variable called 'highSchoolGPA' of type Optional Double with 3.9.

var highSchoolGPA: Double? = 3.9
print(highSchoolGPA)

// PROMPT 6: Declare a mutable variable called 'iOSDevIsTheBest' of type Bool with true.

var iOSDevIsTheBest: Bool = true
print(iOSDevIsTheBest)

// PROMPT 7: Declare a constant called 'earthIsFlat' of type Optional Bool with false.

let earthIsFlat: Bool? = false
print(earthIsFlat)

// PROMPT 8: You want to store the value 3.4924799789977 in a mutable variable called 'myBalance' of type Float/Double. Declare such a variable with this value. What type is best to store this value? Float or Double? (Hint: look at the number of decimal digits)

var myBalance: Double = 3.4924799789977
print(myBalance)


