

puts "What is your name?"
name = gets.chomp
puts "When is your birthday?"
birthday = gets.chomp
puts "What is your best friends name?"
friend = gets.chomp

arr = [name, birthday, friend]
puts "Your answers were: " 
puts arr[0] 
puts arr[1]
puts arr[2]

puts "What song would you like to listen to?"
song = gets.chomp
if song.downcase == "viva la vida"
	x = File.open("MusicProgram.txt", "r")
	x.each_line do |line|
		puts line 
	end
	x.close
else
	puts "What song is that?"
end











