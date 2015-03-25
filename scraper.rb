require "resolv"

puts "IP address for morph.io is:"
puts Resolv::DNS.new.getaddress("morph.io")
puts "$ netcat india.colorado.edu 13"
puts `netcat india.colorado.edu 13`
