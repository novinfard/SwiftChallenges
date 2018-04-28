/*

Write a function that accepts a String as its only parameter, and returns true if the string has only unique letters, taking letter case into account.

Sample input and output
• The string “No duplicates” should return true.
• The string “abcdefghijklmnopqrstuvwxyz” should return true.
• The string “AaBbCc” should return true because the challenge is case-sensitive.
• The string “Hello, world” should return false because of the double Ls and double Os.

*/

import UIKit

func challenge1(input: String) -> Bool {
	var letterSet = Set<Character>()
	for letter in input {
		letterSet.insert(letter)
	}
	if letterSet.count == input.count {
		return true
	} else {
		return false
	}
}

func challenge1b(input: String) -> Bool {
	var usedLetters = [Character]()
	for letter in input {
		if usedLetters.contains(letter) {
			return false
		}
		usedLetters.append(letter)
	}
	return true
}

func challenge1c(input: String) -> Bool {
	return Set(input).count == input.count
}

assert(challenge1(input: "No duplicates") == true, "Challenge 1 failed")
assert(challenge1(input: "abcdefghijklmnopqrstuvwxyz") == true, "Challenge 1 failed")
assert(challenge1(input: "AaBbCc") == true, "Challenge 1 failed")
assert(challenge1(input: "Hello, world") == false, "Challenge 1 failed")

