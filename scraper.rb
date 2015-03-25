require "resolv"
require "mechanize"
require "net/telnet"

puts "IP address for morph.io is:"
puts Resolv::DNS.new.getaddress("morph.io")

puts "Name of a search engine:"
puts Mechanize.new.get("http://google.com").title

puts "Get BOFH excuse via telnet"
tn = Net::Telnet::new("Host" => "towel.blinkenlights.nl", "Port" => 666)
puts tn.waitfor("Match" => "BOFH")

puts "Done."
