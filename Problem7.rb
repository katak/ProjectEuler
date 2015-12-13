# 10001st Prime

require './prime'

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