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

def eliminateMultiples(hash, value)
	if hash[value] == false
		return hash
	end

	# start at second multiple
	index = value + value

	while index <= hash.length + 1
		hash[index] = false
		index += value
	end

	return hash
end

def findPrimesBelow(value)
	hash = Hash.new()
	x = 2
 
 	# populate hash with values
	while x < value
		hash[x] = true
		x += 1
	end

	# Sieve of Eratosthenes
	multipleToEliminate = 2
	while multipleToEliminate < value
		hash = eliminateMultiples(hash, multipleToEliminate)
		multipleToEliminate += 1
	end

	return hash.select {|k,v| v == true}#.keys
end