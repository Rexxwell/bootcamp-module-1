// MODULE 1 - PART 2: Mathematical Operators
//
// Written by Abdulaziz Albahar
//
import Foundation

/*
 TIPS:
 - Click on the line number to the left of this to run all the code from line 1 up to the line number clicked on the console. Doing so also shows you the present value of all variables on the grey space to your right.
 - To see the print results of the execution (when doing it as above), open the console by clicking on the rectangular-ish icon on the bottom right of the screen.
 */


// Operators in Swift are defined as a special symbol we can use to change or combine values, let's look at the important operators below.

// (add) + : we can use this operator to add two numbers ...
var sum: Int = 3 + 2

// ... OR concatenate two strings.

let firstName = "Aziz"
let lastName = "Albahar"

let fullName = firstName + " " + lastName
let dateOfBirth = "December " + "13" + ", " + "2003"

// ... even place values inside strings using \() - called String interpolation
let myAge = 20
let interpolation = "My age is \(myAge)."

// <- [CLICK HERE TO RUN ME]

// (subtract) - : we can use this operator to subtract two numbers.
var difference: Int = 10 - 5

// (multiply) * : we can use this operator to multiply two numbers.
var product: Int = 5*5

// (divide) / : we can use this operator to divide two numbers. If the division doesn't originally yield a whole number, it will be rounded down to a whole number.
var quotient: Int = 11/3

// (modulus) % : we can use this operator to get the remainder from dividing two numbers.
var remainder: Int = 11%3

// (assignment) = : assigns a value specified on the righthand side to a variable specified on the left hand side.
sum = sum + 10

// <- [CLICK HERE TO RUN ME]

// Assignment operators can look unnecessarily long if we simply want to add to the existing variable. Swift allows us to concisely use any mathematical operator in conjunction with the assignment operator to achieve this:
sum += 10
difference -= 1
product *= 10
quotient /= 3
remainder %= 1

// <- [CLICK HERE TO RUN ME]

// TODO: Solve these 5 challenges using the given inputs (a, b, c, d, e).


var a: Int
var b: Int
var c: Int
var d: String
var e: String

/*
 CHALLENGE 1:
    Take the sum of a and b, then multiply the result by c. Store this in 'result1'.
 */
a = 2
b = 10
c = 10

var result1: Int = -1 // Declared but uninitialized.
func challenge1() -> Void {
    // CODE GOES HERE
    result1 = (a + b) * c
}

/*
 CHALLENGE 2:
    Divide the value in 'result1' by a. Subtract the result of that by b+c. Store the end value of this computation in result2.
 */
a = 3
b = 20
c = 4
 
var result2: Int = -1 // Declared but uninitialized.
func challenge2() -> Void {
    // CODE GOES HERE
    result2 = (result1 / a) - (b + c)
}

/*
 CHALLENGE 3:
    If you combine the inputs d and e below, you get the string "I've been alive for  years." Place result2 in between the strings stored in variables 'd' and 'e' to form a coherent statement.
 */

d = "I've been alive for "
e = " years."

var result3: String = "" // Declared but uninitialized.
func challenge3() -> Void {
    // CODE GOES HERE
    result3 = d + String(result2) + e
}

/*
 CHALLENGE 4:
    In one line, compute the remainder of dividing a by b, and *interpolate* it between string inputs d and e.
 */

a = 10
b = 3
d = "Hmm, 3 doesn't quite fit into 10, it yields a remainder of "
e = ". That's unfortunate."

var result4: String = "" // Declared but uninitialized.
func challenge4() -> Void {
    // CODE GOES HERE
    result4 = "\(d)\(a % b)\(e)"
}

/*
 CHALLENGE 5:
    - Without using the '+' operator (use something that looks very similar), add the value 10 to input a.
    - Without using the '*' operator (use something that looks very similar), multiply input b by a.
 */
func challenge5() -> Void {
    // CODE GOES HERE
    a += 10
    b *= a
}
