/*
Challenge 4: Does one string contain another?

Write your own version of the contains() method on String that ignores letter case, and
without using the existing contains() method.

Sample input and output
• The code "Hello, world".fuzzyContains("Hello") should return true.
• The code "Hello, world".fuzzyContains("WORLD") should return true.
• The code "Hello, world".fuzzyContains("Goodbye") should return false.
*/

import UIKit

extension String {
	func fuzzyContains(_ lookup: String) -> Bool {
		if let _ = self.range(of: lookup, options: .caseInsensitive) {
			return true
		} else {
			return false
		}
	}
	
	func fuzzyContains2(_ string: String) -> Bool {
		return self.uppercased().range(of: string.uppercased()) != nil
	}
}

assert("Hello, world".fuzzyContains("Hello") == true, "Challenge 4 Failed")
assert("Hello, world".fuzzyContains("WORLD") == true, "Challenge 4 Failed")
assert("Hello, world".fuzzyContains("Goodbye") == false, "Challenge 4 Failed")

