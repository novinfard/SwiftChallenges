/*
Write a function that accepts a String as its only parameter, and returns true if the string reads the same when reversed, ignoring case.

Sample input and output
• The string “rotator” should return true.
• The string “Rats live on no evil star” should return true.
• The string “Never odd or even” should return false; even though the letters are the same in reverse the spaces are in different places.
• The string “Hello, world” should return false because it reads “dlrow ,olleH” backwards.
*/

import UIKit

func challenge2(input: String) -> Bool {
	let reverseString = String(input.reversed())
	return input.lowercased() == reverseString.lowercased()
}

func challenge2b(input: String) -> Bool {
	let lowercased = input.lowercased()
	return String(lowercased.reversed()) == lowercased
}

assert(challenge2(input: "rotator") == true, "Challenge 2 failed")
assert(challenge2(input: "Rats live on no evil star") == true, "Challenge 2 failed")
assert(challenge2(input: "Never odd or even") == false, "Challenge 2 failed")
assert(challenge2(input: "Hello, world") == false, "Challenge 2 failed")

