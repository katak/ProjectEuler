# Special Pythagorean Triplet

# Scratch work:
# 1 2 997
# 1 3 996
# ...
# 1 499 500

# 2 3 995
# 2 4 994
# ...
# 2 498 500

# 3 4 993
# 3 5 992
# ...
# 3 497 500

def isPythagoreanTriple(a, b,c)
	a2 = a * a
	b2 = b * b
	c2 = c * c

	return (a2 + b2) == c2
end

def findSpecialTriple
	a = 1
	while a < 1000
		b = a + 1
		c = 1000 - b - a # refer to scratch work above
		
		while b < c
			puts a.to_s + ' ' + b.to_s + ' ' + c.to_s
			
			if isPythagoreanTriple(a,b,c) 
				return a*b*c 
			end
			
			b += 1
			c -= 1
		end

		a += 1

	end
end

puts findSpecialTriple