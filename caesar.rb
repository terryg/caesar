#!/usr/bin/env ruby

if ARGV[0].nil? or ARGV[1].nil?
  puts "Usage: cesear.rb [message] [shift]"
  exit
end

message = String.new(ARGV[0])
shift = ARGV[1].to_i

shift = shift % 36

shifted = ('A'..'Z').to_a*2
puts message.upcase.tr('A-Z', shifted[shift..shift+36].join)
