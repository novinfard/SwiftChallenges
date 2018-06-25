/*
Challenge 27: Print last lines

Write a function that accepts a filename on disk, then prints its last N lines in reverse order, all
on a single line separated by commas.

Sample input and output:

Here is your test input file:
Antony And Cleopatra
Coriolanus
Cymbeline
Hamlet
Julius Caesar
King Lear
Macbeth
Othello
Twelfth Night

• If asked to print the last 3 lines, your code should output “Twelfth Night, Othello, Macbeth”.
• If asked to print the last 100 lines, your code should output “Twelfth Night, Othello, Macbeth, King Lear, Julius Caesar, Hamlet, Cymbeline, Coriolanus, Antony and Cleopatra”.
• If asked to print the last 0 lines, your could should print nothing.
*/
import UIKit

func challenge27(filename: String, lineCount: Int) {
	guard let path = Bundle.main.path(forResource: filename, ofType: "txt") else {
		print("error reading bundle")
		return
	}
	guard let input = try? String(contentsOfFile: path, encoding: String.Encoding.utf8) else {
		print("error reading file")
		return
	}
	var lines = input.components(separatedBy: "\n")
	guard lines.count > 0 else { return }
	lines.reverse()
	var output = [String]()
	
	for i in 0 ..< min(lines.count, lineCount) {
		output.append(lines[i])
	}
	print(output.joined(separator: "\n"))
}

challenge27(filename: "sample", lineCount: 10)
