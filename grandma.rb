while true do
	reply1 = 'HUH?! SPEAK UP, SONNY!'
	reply2 = 'NO, NOT SINCE'
	puts 'What would you like to say to Grandma?'
	response = gets.chomp

	while response != 'BYE'
		if response == response.upcase
			puts reply2
			puts ((rand(21)+1930).to_s)
			break
		else
			puts reply1
			
			break
		end
	end
end
