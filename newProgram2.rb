def new_method number
	if number >= 0
		puts "You're absolutely positive!"
	else number <= 0
		puts "Why so negative?"
	end
end


while true do
	puts "Pick a number, any number!"
	answer  = gets.chomp
	if answer.to_i.to_s == answer
		real = answer.to_i
		new_method(real)
	else
		puts "Pick a real number!"
	end	
end
