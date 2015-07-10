# require 'yaml'
def greet(name)
	"Hello, #{name}, isn't a lovely day?\n"
end

result = greet("Will")

info = result
File.open("greet.txt", "w") {|x| x.write(info)}