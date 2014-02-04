class Account
	attr_accessor :balance
	def initialize(balance)
		@balance = balance
	end
end

class Transaction

	def initialize(account_a, account_b)
		@account_a = account_a
		@account_b = account_b
	end

	private

	def debit(account, amount)
		account.balance -= amount
	end

	def credit(account, amount)
		account.balance += amount
	end

	public
	
	#...
	def transfer(amount)
		debit(@account_a, amount)
		credit(@account_b, amount)
	end
	#...

end

# initial tests
savings = Account.new(100)
checking = Account.new(200)

puts "Savings balance: #{savings.balance}"
puts "Checking balance: #{checking.balance}"

trans = Transaction.new(checking, savings)
trans.transfer(50)

puts "After $50 transaction:"
puts "Savings balance: #{savings.balance}"
puts "Checking balance: #{checking.balance}"




# person example
person = "Tim"
puts "\nThe object in 'person' is a #{person.class}"
puts "the object has an id of #{person.object_id}"
puts "and a value of '#{person}'"

person1 = "Tim"
person2 = person1
person1[0] = 'J' # shows that strings are mutable!

puts "\nperson1 is #{person1}"
puts "person2 is #{person2}"

puts "\nperson1 id: #{person1.object_id}" # same id means that they reference the same object.
puts "person2 id: #{person2.object_id}"

=begin
Notes:

1. There are two different ways to deal with encapsulation

2. When appending to the end of an array, push can add many items and << can only add one item.

3. in the constructor, attr_reader :item will give you access to the item,
	 and protected :item, will make the item protected. Can use both at the same time.

4. Everything is an object (never forget it!)

5. Correction: variables are not objects. They are references to objects. Check out person example.

6. Strings are mutable!
=end
