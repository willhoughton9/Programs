class Dragon
	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10
		@stuff_in_intestine = 0
		
		puts "#{@name} is born."
	end

	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts "You walk #{@name}."
		@stuff_in_intenstine = 0
		passage_of_time
	end
	
	def put_to_bed
		puts "You put #{@name} to bed."
		@asleep = true
		3.times do 
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke."
			end
		end
		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end

	def toss
		puts "You toss #{@name} up into the air."
		puts "He gigles, which singes your eyebrows."
		passage_of_time
	end
	
	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts "He briefly dozes off..."
		passage_of_time
		if @asleep
			@asleep = false
				puts "... but wakes up when you stop."
		end
	end

	private
	def hungry?
		@stuff_in_belly <= 2
	end
	
	def poopy?
		@stuff_in_intestine >= 8
	end

	def passage_of_time 
		if @stuff_in_belly > 0 
			@stuff_in_belly = @stuff_in_belly - 1
			@stuff_in_intestine = @stuff_in_intestine + 1
	
		else
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
		puts "#{@name} is starving! In desperation, he ate YOU!"
			exit
		end

		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops! #{@name} had an accident..."
		
		if hungry?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name}'s stomach grumbles..."
		end

		if poopy?
			if @asleep
				@asleep = false
				puts "He wakes up suddenly!"
			end
			puts "#{@name} does the potty dance..."
		end
	end

end
end
pet = Dragon.new "Bob"
	puts "What do you want to do with the dragon?"
	x = gets.chomp
while true do
	if x  == "feed"
		pet.feed
	elsif x  == "toss"
		pet.toss
	elsif x  == "walk"
		pet.walk
	else x  == "rock"
		pet.rock
	end
	break		
end

puts 'This will never stop, will it?'




