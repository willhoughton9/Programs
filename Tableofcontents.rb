line_width = 50
str1 = 'Table of Contents'
str2 = 'Chapter 1: Getting Started'
str20 = 'page 1'
str3 = 'Chapter 2: Numbers'
str30 = 'page 9'
str4 = 'Chapter 3: Letters'
str40 = 'page 13'

puts(str1.center(line_width))
puts (str2.ljust(line_width/2) + str20.rjust(line_width/2))
puts (str3.ljust(line_width/2) + str30.rjust(line_width/2))
puts (str4.ljust(line_width/2) + str40.rjust(line_width/2))
