/*
Challenge 6: Remove duplicate letters from a string

Write a function that accepts a string as its input, and returns the same string just with
duplicate letters removed.
Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.

Sample input and output
• The string “wombat” should print “wombat”.
• The string “hello” should print “helo”.
• The string “Mississippi” should print “Misp”.
*/

import UIKit

func challenge6(input: String) -> String {
	let array = input.map { String($0) }
	let set = NSOrderedSet(array: array)
	let letters = Array(set) as! Array<String>
	return letters.joined()
}

func challenge6b(input: String) -> String {
	var used = [Character]()
	for letter in input {
		if !used.contains(letter) {
			used.append(letter)
		}
	}
	return String(used)
}

func challenge6c(input: String) -> String {
	var used = [Character: Bool]()
	
	let result = input.filter {
		used.updateValue(true, forKey: $0) == nil
	}
	
	return String(result)
}


assert(challenge6(input: "wombat") ==  "wombat", "Challenge 4 Failed")
assert(challenge6(input: "hello") ==  "helo", "Challenge 4 Failed")
assert(challenge6(input: "Mississippi") ==  "Misp", "Challenge 4 Failed")

