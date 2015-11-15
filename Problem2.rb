# Even Fibonacci Numbers

def fib
	fib_values = []

	# starting values
	x = 1
	y = 2

	fib_values.push x
	fib_values.push y

	while y <= 4000000 do
		z = x # store x value temporarily
		x =	y # shift x up to value of y
		y = y + z

		if(y > 4000000)
			break
		else
			fib_values.push y
		end
	end

	return fib_values
end

sum_of_even_values = 0

fib.each do |val|
	if val % 2 == 0
		sum_of_even_values += val
	end
end

puts sum_of_even_values