# Helper methods for prime-related problems

def isPrime(value)
	x = 2
	while x < value
		if value % x == 0
			return false
		end
		x += 1
	end
	return true
end