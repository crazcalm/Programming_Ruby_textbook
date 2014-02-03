#!/usr/bin/ruby
class BookInStock

	attr_reader :isbn
	attr_accessor :price

	def initialize(isbn, price)
		@isbn = isbn
		@price = Float(price)
	end

	def to_s
		"ISBN: #{@isbn}, price #{@price}"
	end

	def price_in_cents
		Integer(price*100 + 0.5)
	end

	def price_in_cents=(cents)
		@price = cents / 100
	end

=begin
# attr_accessor replaces you
	def price=(new_price)
		@price = new_price
	end
=end

=begin
# The following code was replaced by
# the attr_reader, which is a shortcut for
# creating getters

	def isbn
		@isbn
	end

	def price
		@price
	end

=end

end

# Class instances
b1 = BookInStock.new("isbn1", 3)
b2 = BookInStock.new("isbn2", 3.14)
b3 = BookInStock.new("isbn3", "5.67")

# Testing out p method
p b1
p b2
p b3

# Testing out puts method
puts b1
puts b2
puts b3

# Testing getter methods
book = BookInStock.new("isbn1", 12.34)
puts "\nISBN = #{book.isbn}"
puts "Price = #{book.price}"

# Testing the setter method
book.price = book.price * 0.75  #discount price
puts "New price = #{book.price}"

# Testing the price_in_cents
puts "Price in cents = #{book.price_in_cents}"

# Testing the price_in_cents(arg)

book.price_in_cents = 1000 # This works, but i cannot set and call at the same time
puts "Calling the getter book.price: #{book.price}"
puts "I am really surprised that this type of overloading doesn't break anything."

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

attr_reader # read access (getter method)

attr_writer # write access (setter method)

attr_accessor # read and write access

prince_in_cents # Should use BigDecimal instead of Float so that
					      # you do not have to forcibly round things by adding 0.5
=end


