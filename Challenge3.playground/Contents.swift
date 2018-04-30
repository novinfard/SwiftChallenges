/*
Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.

Sample input and output
• The strings “abca” and “abca” should return true.
• The strings “abc” and “cba” should return true.
• The strings “ a1 b2 ” and “b1 a2” should return true.
• The strings “abc” and “abca” should return false.
• The strings “abc” and “Abc” should return false.
• The strings “abc” and “cbAa” should return false.
*/

import UIKit

func challenge3(input1: String, input2: String) -> Bool {
//	return Set(input1) == Set(input2) && input1.count == input2.count
	return input1.sorted() == input2.sorted()
}

func challenge3b(input1: String, input2: String) -> Bool {
	var checkString = input2
	for char1 in input1 {
		if let char1Index = checkString.index(of: char1) {
			checkString.remove(at: char1Index)
		} else {
			return false
		}
	}
	
	return checkString.count == 0
}

func challenge3c(string1: String, string2: String) -> Bool {
	let array1 = Array(string1)
	let array2 = Array(string2)
	return array1.sorted() == array2.sorted()
}

assert(challenge3(input1: "abca", input2: "abca") == true, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "cba") == true, "Challenge 3 failed")
assert(challenge3(input1: "a1 b2", input2: "b1 a2") == true, "Challenge 3 failed")
assert(challenge3(input1: "abca", input2: "abca") == true, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "abca") == false, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "Abc") == false, "Challenge 3 failed")
assert(challenge3(input1: "abc", input2: "cbAa") == false, "Challenge 3 failed")
assert(challenge3(input1: "abcc", input2: "abbc") == false, "Challenge 3 failed")

