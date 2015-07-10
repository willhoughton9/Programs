puts 'What is your starting year?'
lower = gets.chomp
puts 'What is your ending year?'
higher = gets.chomp
years = value.between?(lower, higher)

	if years%4 == 0
		puts years
	else
		puts false
end