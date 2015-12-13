# Summation of Primes

require './prime'

def sumPrimes(primes_hash)
	sum = 0
	primes_hash.each_key {|key| sum += key}

	return sum
end

puts sumPrimes findPrimesBelow 2000000