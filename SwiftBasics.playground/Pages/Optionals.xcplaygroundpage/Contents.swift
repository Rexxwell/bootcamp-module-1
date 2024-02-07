// MODULE 1 - PART 4: Optionals
//
// Written by Abdulaziz Albahar
//
import Foundation

/*
 TIPS:
 - Click on the line number to the left of this to run all the code from line 1 up to the line number clicked on the console. Doing so also shows you the present value of all variables on the grey space to your right.
 - To see the print results of the execution (when doing it as above), open the console by clicking on the rectangular-ish icon on the bottom right of the screen.
 */


/*
 Over the past week, you've learned about one of Swift's powerful features. Optionals. You'll encounter these a lot when dealing with iOS frameworks, APIs, and old codebases. Thus, it's important to be able to understand the rules that come with it as well as how to manipulate/read values wrapped in Optionals. A lack of such knowledge can be hazardous for your application. Use these challenges as an opportunity to get comfortable with them:
 */

/* CHALLENGE 1: You are given a postcode input which may or may not contain nil. You will want to check if this postcode is not nil (it does exist), and add it to the address stored in myAddress only if the postcode is not nil. Repeat this logic using each of the following once:
        - “if let”
        - “guard let”
        - “force unwrap”
        - "nil coalescing"
 
    Use fatalError() inside the 'else block' of your "guard let", so that Xcode doesn't complain.
 */
var myPostCode: String? = "30332"
var myAddress: String = "North Avenue, GT, "

//if let
if let myPostCodeUnwrapped = myPostCode {
    myAddress = myAddress + myPostCodeUnwrapped
}

//guard let
guard let myPostCodeUnwrapped = myPostCode else {
    fatalError()
}
myAddress = myAddress + myPostCodeUnwrapped

//force unwrap
myAddress = myAddress + myPostCode!

//nil coalescing
myAddress = myAddress + (myPostCode ?? "")

/* CHALLENGE 2: If a rank exists (has a value, not nil), set the endOfGameSummary to "Congrats! You've achieved rank X in this round." where X is the value stored in myRank. Otherwise, set the endOfGameSummary to "You did not achieve a rank in this round. Better luck next time!". Repeat this logic using each of the following once:
        - “if let”
        - “guard let”
        - ternary operator

    Use fatalError() inside the 'else block' of your "guard let", so that Xcode doesn't complain.
 */
var myRank: Int? = 5
var endOfGameSummary: String = "None"

//if let
if let myRankUnwrapped = myRank {
    endOfGameSummary = "Congrats! You've achieved rank \(myRankUnwrapped) in this round."
} else {
    endOfGameSummary = "You did not achieve a rank in this round. Better luck next time!"
}

//guard let
guard let myRankUnwrapped = myRank else {
    endOfGameSummary = "You did not achieve a rank in this round. Better luck next time!"
    fatalError()
}
endOfGameSummary = "Congrats! You've achieved rank \(myRankUnwrapped) in this round."

//ternary operator
endOfGameSummary = (myRank == nil) ? "You did not achieve a rank in this round. Better luck next time!" : "Congrats! You've achieved rank \(myRank!) in this round."

/*
 CHALLENGE 3: You are currently cooking your lunch.
    - The variable amountOfFoodInsidePan tells you how much food you have in your pan. If this variable has no value (nil), this means that we don't have a pan to use and are unable to cook.
    - The variable foodStock tells you the amount of food available, that you can throw into the pan.
    - The cookingMode is a string describing the heatLevel, no value (nil) means it is off. "Low", "Medium", "High" are other values.
 
    TODO: Write a bit of code to perform the following
    - If the food stock is empty or we don't have a pan, we are unable to cook anything and give up. In this case print "I give up.", then call fatalError().
    - If we have a stock of food and have a pan, this means we are able to cook. If both are true, divide it into three subcases:
        - If the cooking mode is not off (not nil), lower the cooking mode (if cookingMode is High, change it to Medium. if Medium, change it to Low. if Low. set it to nil (off).
        - Take 3 items from the foodStock, and add it to the pan (amountOfFoodInsidePan)
    - You must use a 'guard let' / 'guard' statement at least once. (do you know which part may benefit from this?)
*/
var foodStock: Int = 20
var amountOfFoodInsidePan: Int? = 5
var cookingMode: String? = nil

if (foodStock == 0) {
    print("I give up.")
    fatalError()
}

guard let amountOfFoodInsidePanUnwrapped = amountOfFoodInsidePan else {
    print("I give up.")
    fatalError()
}

if let cookingModeUnwrapped = cookingMode {
    if (cookingModeUnwrapped == "High") {
        cookingMode = "Medium"
    } else if (cookingModeUnwrapped == "Medium") {
        cookingMode = "Low"
    } else {
        cookingMode = nil
    }
    foodStock -= 3
    amountOfFoodInsidePan! += 3
}

// CHALLENGE 4: Assign the length of optional string 'myString' to variable 'length'. You are NOT allowed to perform any force unwrapping in the solution and are NOT allowed to perform "if myString == nil". (maybe you should explore the other methods of unwrapping)
// If myString has no value, you can set it to 0.
let myString: String? = "iOS Club"
var length: Int = -1

if let myStringUnwrapped = myString {
    length = myStringUnwrapped.count
} else {
    length = 0
}

// <- [CLICK HERE TO RUN ME], don't worry if you get an error. It's probably because of the `fatalError()` call we told you to make.
