# When done, submit this entire file to the autograder.

# Part 1

def sum(array)
	x=0
	if array.length > 0
		array.each do |d|
			x+=d
		end
		return x
    else return 0
	end
end

def max_2_sum(array)
  return 0 if array.empty?
  return array.first if array.length == 1

  array.sort{ |x, y| y <=> x }.take(2).reduce(:+)
end

def sum_to_n?(array,n)
	result = false
	if array.length  > 1
		for i in 1..array.length  - 1
			for j in 0..i - 1
				if array[j] + array[i] == n
					result = true
					break
				end
			end
		end
	end
	return result
end


# Part 2

def hello name
  "Hello, " + name
end
def starts_with_consonant? s
  !!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
end

def binary_multiple_of_4? s
	if (s.to_s =~ /\b[01]+\b/ && s.to_i % 4 == 0)
		return true
	else
		return false
	end
end


# Part 3
class BookInStock 
	def initialize(isbn,price)
		@isbn=isbn
		@price=price
		# exeption 
		if @isbn.empty? || @price <= 0 
			raise ArgumentError
		end
	end
	
	attr_accessor :isbn
	attr_accessor :price

	def price_as_string
		"$#{'%.2f' %  @price}"
	end

end
