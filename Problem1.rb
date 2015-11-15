# Multiples of 3 and 5

def sum(values)
	total = 0
	values.each do |value|
		total += value
	end
	total
end

def extract_multiples(value)
	multiples = []
	multiple = 1
	while multiple < value do
		if multiple % 3 == 0 || multiple % 5 == 0
			multiples.push multiple
		end
		multiple += 1
	end
	multiples
end
 
puts sum extract_multiples 1000