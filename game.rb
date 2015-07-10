def playtime (gametime)
	puts "How much money would you like to bet?"
	money_answer = gets.chomp.to_i
	if money_answer > $money 
		puts "You don't have that kind of money!"
		exit
	end	
	3.times { puts "*Shuffles cups*" }
	x = rand(1..3).to_i.to_s
	game_answer2 = x
	puts "Pick a cup... 1, 2, or 3?"
	game_answer = gets.chomp
	2.times do
		if game_answer != x
			puts "Last chance..."
			game_answer = x
			game_answer2 = gets.chomp
			next
		elsif game_answer2 != x
			puts "Ho ho ho, you lose."
			puts "It was hidden under cup #" + x.to_s
			$money-=money_answer
			if $money <= 0
				puts "Sorry, you ran out of money!"
				exit
			end
			puts "You now have: " + $money.to_s + " bucks."
			puts "Would you like to play again?"
            quit_answer = gets.chomp
            quit (quit_answer)
		else
			puts "Hmph... You win."
			$money+=money_answer
			puts "You now have: " + $money.to_s + " bucks."
			puts "Would you like to play again?"
			quit_answer = gets.chomp
			quit (quit_answer)
		end
	end
end

def game (answer) 
	if answer.downcase == "yes"
		playtime(answer)
	elsif answer.downcase == "no"
		puts "Awww, come back another time!"
	else
		puts "What kind of answer is that?"
end
end

def gamble(money)
end	 

def quit (quit_answer)
	while true do
		if quit_answer.downcase == "no"
			puts "Awww, come back another time!"
			exit
		elsif quit_answer.downcase == "yes" 
			playtime(quit_answer)
		else
			puts "Yes or no?"
			puts "Would you like to play again?" 
			quit_answer = gets.chomp
		end
	end
end

puts "You have $1000 bucks on you"
$money = 1000
puts "Would you like to play a game?"
response =  gets.chomp	
game (response)

