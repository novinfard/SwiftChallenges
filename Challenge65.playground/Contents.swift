/*
Your task is to make a function that can take any non-negative integer as a argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.

Examples:
Input: 21445 Output: 54421
Input: 145263 Output: 654321
Input: 1254859723 Output: 9875543221
*/

import Foundation

func descendingOrder(of number: Int) -> Int {
	let tempString = String(number)
	var intArray = [Int]()
	
	for ch in tempString {
		if let someInt = Int(String(ch)) {
			intArray += [someInt]
		}
	}
	
	let sortedArray = intArray.sorted(by: >)
	let sortedArrayString = sortedArray.map{String($0)}
	let descendingString = sortedArrayString.joined()
	
	return Int(descendingString) ?? 0
}

assert(descendingOrder(of: 1254859723) == 9875543221 , "Challenge Failed")
