# This is code is for study Creating and manipulating ranges in ruby
# Author: @roa-sh

# x..y includes y in the range
# x...y doesn't includes y

nums = 1...98
p nums.last
p nums.first
p nums.first(4)
p nums.last(5)
p nums.first(20).class

# size
p nums.first(nums.size)

# Alphabets

alphabet = 'a'...'z'
# puts alphabet.to_a
puts "Does it include \"v\"? #{alphabet.first(14).include?('v')}"

# random numbers

puts rand # between 0 and 1

puts rand.round(2) # 2 floating digits

puts rand(100) # between 0 and 99

puts rand(22...33) # between a range, this case between 22 and 33
