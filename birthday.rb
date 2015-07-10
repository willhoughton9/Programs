puts "What year were you born?"
year = gets.chomp.to_i
puts "Month?"
month = gets.chomp.to_i
puts "Day?"
day = gets.chomp.to_i

birthday = Time.local(year, month, day)
time = Time.new 

age = 1

while Time.local(year+age, month, day) <= time
	puts "SPANKS!"
	age+=1
end

