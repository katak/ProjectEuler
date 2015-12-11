# Largest Palindrome Product

def isPalindrome(value)
	valueAsString = value.to_s
	return valueAsString == valueAsString.reverse
end

def findPalindrome
	palindromes = []
	y = 999

	while y > 99
		x = 999

		while x > 99
			testValue = x * y
			puts x.to_s + ' * ' + y.to_s + ' = ' + testValue.to_s
			if isPalindrome testValue
				palindromes.push testValue
			end
			x -= 1
			
		end

		y -= 1
	end
	puts palindromes.max.to_s
end

findPalindrome