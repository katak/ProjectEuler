# 10001st Prime

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

def findNthPrime(n)
	valueToCheckIfPrime = 2
	primeCount = 0

	while primeCount <= n
		
		if isPrime valueToCheckIfPrime
			primeCount += 1
			puts valueToCheckIfPrime.to_s + ' is prime'
		end

		if primeCount == n
			return valueToCheckIfPrime
		else
			valueToCheckIfPrime += 1
		end
	end
end

puts findNthPrime 10001