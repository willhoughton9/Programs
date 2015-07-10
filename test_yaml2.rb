require 'yaml'

info = {"Name" => "Will Houghton"}
File.open("name.yml","w") {|x| x.write(info.to_yaml)}