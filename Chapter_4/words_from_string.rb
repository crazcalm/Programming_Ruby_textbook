def words_from_string(string)
	string.downcase.scan(/[\w'+]+/)
end

p words_from_string("But I didn't inhale, he said (emphatically)")

=begin
Notes:

1. regex can be used without the use of importing anything

2. \w = letters, ' = ' , + = greedy operator

=end
