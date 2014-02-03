#!/usr/bin/ruby
class BookInStock
	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end

	def to_s
		"ISBN: #{@isbn}, price #{@price}"
	end
end

b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn2", 3.14)
b3 = BookInStock.new("isbn3", "5.67")


p b1
p b2
p b3

puts b1
puts b2
puts b3


=begin
Notes:

need to know  # if no return is specified, then the last statement is returned (crazy. right?)

need to know # Binding rules! Tight binds and loose binds are different
             # ex. 'example' and "example" are different (in implementation)
						 # #{stuff} always uses "" or tight bindings


acceptable spacing # 2 spaces

p # if no to_s is defined, will print class name and instance variables

print # prints string representation (if defined)

puts # print with a \n

instance variable (variables in a class) # start with @ symbol
=end


