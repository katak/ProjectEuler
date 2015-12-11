# Factorial Digit Sum

def factorial(value)
	x = value - 1
	while x > 0
		value = value * x
		x -= 1;
	end
	return value
end

def sumOfDigits(value)
	valueAsString = value.to_s
	digits = valueAsString.split(//)
	sum = 0

	digits.each do |digit|
		sum += digit.to_i
	end
	
	return sum
end

puts sumOfDigits factorial 100