birth_dates = {}
File.read('birthdates.txt').each_line do |line|
	line = line.chomp
	comma = 0
	while line[comma].chr != ',' && comma < line.length
	comma = comma+1
end

	name = line[0..(comma - 1)]
	date = line [-12..-1]

	birth_dates[name] = date
end

puts "What is their name?"
	name = gets.chomp
date = birth_dates[name]
puts date[0..5]

