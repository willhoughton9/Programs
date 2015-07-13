while true
	puts 'Do you like eating tacos?'
	answer = gets.chomp.downcase
	if (answer == 'yes' || answer == 'no')
		break
	else
		puts = 'Please answer "yes" or "no".'
	end
end