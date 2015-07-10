require 'yaml'

info = {"Date" => "7/8/2015"}
File.open("test_yaml.txt", "w") {|x| x.write(info.to_yaml)}
