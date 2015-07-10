def old_roman_numeral answer
while true do
	if (answer >=1 || answer <= 3000)
	puts 'Welcome to number-to-numeral conversion!'
	puts 'What is your number?'
	answer = gets.chomp.to_i

	m_mod = answer%1000
	d_mod = answer%500
	c_mod = answer%100
	l_mod = answer%50
	x_mod = answer%10
	v_mod = answer%5
	
	m_div = answer/1000
	d_div = m_mod/500
	c_div = d_mod/100
	l_div = c_mod/50
	x_div = l_mod/10
	v_div = x_mod/5
	i_div = v_mod/1
	
	m = 'M' * m_div
	d = 'D' * d_div
	c = 'C' * c_div
	l = 'L' * l_div
	x = 'X' * x_div
	v = 'V' * v_div
	i = 'I' * i_div
	
	puts m + d + c + l + x + v + i
	break
		end
	end
end
	answer = gets.chomp.to_i
	old_roman_numeral(answer)

	
		
	