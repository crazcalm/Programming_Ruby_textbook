def count_frequency(word_list)
	counts = Hash.new(0)
	for word in word_list
		counts[word] += 1
	end
	counts
end


p count_frequency(["sparky", "the", "cat", "sat", "on", "the", "mat"])

=begin
Notes:

1. Ruby Hashes  = Python dictionaries

2. Hash.new(0): # Creating a hash using Hash.new(0), the parameter, 0,
								# in this case, will be used as the hash's default value.

3. counts:  # Is an Ruby Hash that has 0 for the default value for all keys


=end
