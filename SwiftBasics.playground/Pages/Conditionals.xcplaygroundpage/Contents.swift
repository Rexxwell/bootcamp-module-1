// MODULE 1 - PART 3: Conditionals and Comparison Operators
//
// Written by Abdulaziz Albahar
//
import Foundation

/*
 TIPS:
 - Click on the line number to the left of this to run all the code from line 1 up to the line number clicked on the console. Doing so also shows you the present value of all variables on the grey space to your right.
 - To see the print results of the execution (when doing it as above), open the console by clicking on the rectangular-ish icon on the bottom right of the screen.
 */

// CHALLENGE 1: Gary has a smart alarm system which reads a message (alarmMessage) depending on whether he's awake (represented by isAwake). If Gary is awake, set the alarm message to "Good morning Gary!", otherwise set it to "Wake up Gary!". Recreate such a conditional check using if-else, ternary statements, and a guard statement (inside the else block, instead of `return` perform `fatalError()`).
let isAwake: Bool = true
var alarmMessage: String
// [start here]
if (isAwake) {
    alarmMessage = "Good morning Gary!"
} else {
    alarmMessage = "Wake up Gary!"
}

// CHALLENGE 2: Using if-(else if)-else statements, perform the following condition check: if both gary (garyIsAwake) and max (maxIsAwake) are awake, print "How are you both feeling?". If only one of them is awake, print "How are you feeling X?", where X is the person awake, and "Wake up Y!" where Y is the other person (not awake). If none are awake, print "Wake up!".
let garyIsAwake: Bool = true
let maxIsAwake: Bool = false

if (garyIsAwake && maxIsAwake) {
    print("How are you both feeling?")
} else if (garyIsAwake) {
    print("How are you feeling Gary?")
    print("Wake up Max!")
} else if (maxIsAwake) {
    print("How are you feeling Max?")
    print("Wake up Gary!")
} else {
    print("Wake up!")
}

// CHALLENGE 3: test the combined used of &&, !, ||, <, >, <=, >= to achieve a conditional assignment. You are trying to bake a cake, you need 'flourNeeded' grams of flour to bake it. You currently have 'flourLeft' grams of flour. Write a conditional statement which prints "I have enough flour." if the amount of flour needed is available. Otherwise, print "I'll go buy more flour!" and increment the amount of flour you now have by 15.
var flourLeft: Int = 10
let flourNeeded: Int = 5

if (flourLeft >= flourNeeded) {
    print("I have enough flour.")
} else {
    print("I'll go buy more flour!")
    flourLeft += 15
}
