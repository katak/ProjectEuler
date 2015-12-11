# Sum Square Difference

def sumOfSquares
	sum = 0
	x = 100

	while x > 0
		sum += (x*x)
		puts x
		x -= 1
	end

	return sum
end

def squareOfSum
	sum = 0
	x = 100

	while x > 0
		sum += x
		puts x
		x -= 1
	end

	return sum*sum
end

puts squareOfSum - sumOfSquares