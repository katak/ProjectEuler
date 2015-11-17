# Largest Prime Factor

def largest_prime_factor(value)

	factors = []
	x = 1

	while x < value
		x = find_min_factor value
		# puts 'found min factor ' + x.to_s + ' for value ' + value.to_s
		factors.push x
		if x > value
			# puts 'x ' + x.to_s + ' was > value ' + value.to_s
			factors.push x
			break
		end
		value = value / x
		# puts 'new value ' + value.to_s
	end

	# factors.uniq # get all prime factors
	factors.max
end


def find_min_factor(value)
	x = 2

	while x < value
		if value % x == 0
			return x
		end
		x += 1
	end
	return x
end

puts largest_prime_factor 600851475143