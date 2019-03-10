# Part 1
def sum(a)
	s = 0
	a.each {|x| s+= x}
	s
end

def max_2_sum(a)
	return 0 if a.empty?
	return a[0] if a.length == 1
	ar = a.sort
	ar[-1] + ar[-2]
end

def sum_to_n?(a, n)
	return false if a.empty? or a.length == 1

	h = Hash.new
	a.each{|x| 
		if h.key? x
			return true
		else
			h[n - x] = n	
		end
	}
	return false
end

# Part 2

def hello(name)
	"Hello, #{name}"
end


def starts_with_consonant? (s)
	/^[b-df-hj-np-tv-z]/i.match(s) != nil
end

def binary_multiple_of_4? (s)
	return true if s == "0"
	/^[10]*00$/.match(s) != nil
end

# Part 3

class BookInStock

	attr_accessor :isbn
	attr_accessor :price

	def initialize(isbn, price)
		raise ArgumentError, 
			"Illegal argument" if isbn.empty?  or price <= 0
		@isbn = isbn
		@price = price
	end

	def price_as_string
		sprintf("$%2.2f", @price)
	end
end
