/*
Challenge 5: Count the characters

Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.
Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.

Sample input and output
• The letter “a” appears twice in “The rain in Spain”.
• The letter “i” appears four times in “Mississippi”.
• The letter “i” appears once times in “Hi John! It's me!”.
*/

import UIKit

func challenge5(input: String, lookup: Character) -> Int {
	let contained = input.filter { (character) -> Bool in
		if character == lookup {
			return true
		} else {
			return false
		}
	}
	return contained.count
}

func challenge5b(input: String, lookup count: Character) -> Int {
	var letterCount = 0
	for letter in input {
		if letter == count {
			letterCount += 1
		}
	}
	return letterCount
}

func challenge5c(input: String, lookup: Character) -> Int {
	return input.reduce(0) { (result, character) in
		character == lookup ? result + 1 : result
	}
//	return input.reduce(0) {
//		$1 == lookup ? $0 + 1 : $0
//	}
}

func challenge5d(input: String, lookup count: String) -> Int {
	let array = input.map { String($0) }
	let counted = NSCountedSet(array: array)
	return counted.count(for: count)
}

func challenge5e(input: String, lookup count: String) -> Int {
	let modified = input.replacingOccurrences(of: count, with:
		"")
	return input.count - modified.count
}


assert(challenge5(input: "The rain in Spain", lookup: "a") == 2, "Challenge 4 Failed")
assert(challenge5(input: "Mississippi", lookup: "i") == 4, "Challenge 4 Failed")
assert(challenge5(input: "Hi John! It's me", lookup: "i") == 1, "Challenge 4 Failed")

