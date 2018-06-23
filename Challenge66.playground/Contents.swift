/**
Challenge 66: Closets to Zero
Given an array of integers, find the one closest to zero, not including zero itself.
If a positive and negative number tie, the positive number should be returned.

Example:
Input: [4, 3, -10, 4, 3, 0, -2, -5, 8]
Output: -2

According to the rules, finds the closest number to zero

- returns:
the closest number to zero as per the rules

- parameters:
- input: an array of integer numbers to work on
*/

func challenge66(input: [Int]) -> Int {
	
	// zero return means there's something wrong with the array
	guard input.count != 0 else { return 0 }
	
	let filteredPositive = input.filter({ $0 > 0}).sorted()
	let filteredNegative = input.filter({ $0 < 0}).sorted(by: >)
	
	if filteredNegative.count == 0 && filteredPositive.count == 0  {
		return 0
	} else if filteredNegative.count == 0 {
		return filteredPositive[0]
	} else if filteredPositive.count == 0 {
		return filteredNegative[0]
	}
	
	if abs(filteredNegative[0]) < filteredPositive[0] {
		return filteredNegative[0]
	} else {
		return filteredPositive[0]
	}
	
}

assert(challenge66(input: [ 4, 3, -10, 4, 3, 0, -2, -5, 8 ]) == -2, "Challenge Failed")

