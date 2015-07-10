puts 'Begin writing'
array = Array.new

keys = gets.chomp
while keys != 'no'
	array << gets.chomp
	array.sort
	keys = array.last
	puts 'Anything else?'
end
keys = array.to_s
puts 'Here\'s what you put :' + keys