# Smallest Multiple

def isDivisible(value)
	# start at highest multiple and short circuit early to save cpu
	return value % 20 == 0 &&
		value % 19 == 0 &&
		value % 18 == 0 &&
		value % 17 == 0 &&
		value % 16 == 0 &&
		value % 15 == 0 &&
		value % 14 == 0 &&
		value % 13 == 0 &&
		value % 12 == 0 &&
		value % 11 == 0
end

def findSmallestMultiple
	x = 20 # start at first value divisble by 20
	startTime = Time.now
	while true
		puts x
		if isDivisible x
			endTime = Time.now
			puts endTime.to_s + ' - ' + startTime.to_s
			puts 'Time: ' + (endTime - startTime).to_s
			return x
		end

		# End value must be divisible by 20 so we eliminate 95% of
		# values being tested by only considering multiples of 20
		x += 20 
	end
end

puts findSmallestMultiple
# This approach ran in 311.633 seconds. Could probably do better.