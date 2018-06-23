/*
Challenge 67: Word Score

Calculate the scores of a word by these rules based on their characters:
For the first occurence, give it its own score
For the second occurence, give it the half of its score
For the third occurence, give it the double of its score

Notes:
- If you see the character again double the previous score
- The characters are case-insensitive
*/
import Foundation

func calculateScore(_ input: String, value: [Character: Int]) -> Int {
	let word = String(input.uppercased())
	var valMat = [Character: [Double]]()
	
	// The score
	var score = 0
	
	var previous = Character(" ")
	for char in word {
		if valMat[char] == nil {
			valMat[char] = [1]
		} else if valMat[char]?.count == 1 {
			valMat[char] = [1, 0.5]
		} else if valMat[char]?.count == 2 {
			valMat[char] = [1, 0.5, 2]
		}
		if previous == char {
			valMat[char] = valMat[char]!.map { $0 * 2 }
		}
		
		previous = char
	}
	
	for (char, calc) in valMat {
		let sum = calc.reduce(0, +)
		if let val = value[char] {
			score += val * Int(round(sum))
		}
	}
	
	return score
}

var letters = [Character: Int]()
letters["A"] = 1
letters["B"] = 3
letters["C"] = 3
letters["D"] = 2
letters["E"] = 1
letters["F"] = 4
letters["G"] = 2
letters["H"] = 4
letters["I"] = 1
letters["J"] = 8
letters["K"] = 5
letters["L"] = 1
letters["M"] = 3
letters["N"] = 1
letters["O"] = 1
letters["P"] = 3
letters["Q"] = 10
letters["R"] = 1
letters["S"] = 1
letters["T"] = 1
letters["U"] = 1
letters["V"] = 4
letters["W"] = 4
letters["X"] = 8
letters["Y"] = 4
letters["Z"] = 10

assert(calculateScore("Thomas", value: letters) == 11, "Challenge Failed")
