require 'csv'
require_relative 'book_example'

class CSVReader

	attr_reader :books_in_stock

	def initialize
		@books_in_stock = []
	end

	def read_in_csv_data(csv_file_name)
		CSV.foreach(csv_file_name, headers: true) do |row|
			@books_in_stock << BookInStock.new(row["ISBN"], row["Price"])
			
			puts books_in_stock
		end
	end

	def total_value_in_stock  # They will teach us a shortcut for this later... Okay...
		sum = 0.0
		@books_in_stock.each {|book| sum+= book.price}
		sum
	end

	def number_of_each_isbn	# The code for this is not hear. I'll improvise
		stack = []
		@book_in_stock.each {|book| stack << book.isbn}
		stack
	end
end


