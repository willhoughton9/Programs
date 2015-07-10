while true
	puts 'Do you wet the bed?'
	answer = gets.chomp.downcase
	if (answer == 'yes' || answer =='no')
		if answer == 'yes'
		wets_bed = true
	else
		wets_bed = false
	end
	break
else
	puts 'Please answer "yes" or no".'
	end
end
