# This is code is for study strings in ruby
# Author: @roa-sh

str_1 = "Hola mundo 123445"

str_2 = <<MLS
Hello world this is mail.

Date: Junio 1 2021

Author Juan Manuel AKA \"roa\" \n\n

the end

MLS

puts str_2

puts "Hello \nworld"
puts 'Hello \n world'


p "Hill" < "Hu"

# length and size are the same

p str_2.length

# Extracting Characters from a String 

str_ext = "This is my string"
# Slice notation [a..b]

p "Hello World"[4]  #  Select the item in the foruth (4) position

p str_ext[4,3]      #  Select the substring starting from the 4 pos and 3 chars forward

p str_ext[9..12]    #  Select in a range, from char in pos 9 to char in pos 12

p str_ext

str_ext[5] = "a"

p str_ext

str_ext[-6..] = "Second day at kommit"
p str_ext


p str_ext.reverse

# Bang Methods
# Wow this is amazing, pretty useful and less code
# It works lik this, next 2 lines are the same

str_ext = str_ext.upcase
p str_ext
str_ext.downcase!
p str_ext

# Include metho string.include?(substring)
p str_ext.include?("my")

# .empty?

p "".empty?
p " ".empty?

# .nil?

substr = str_ext[100,4]
p substr.nil?
p "".nil?