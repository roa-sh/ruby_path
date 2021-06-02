=begin
This is code is for study numbers and booleans in ruby
Author: @roa-sh
=end


p 5.next

#.class returns me the class of the object
p 5.class 
p 7.7.class
p 99999999999999999999999999999999999999999999999999999999999.class

#----------------Casting/Converting Numbers into strings and viceversa
n = 5
str_ = "33" 

p str_.to_i
p n.to_s

# ----------------------Booleans
n1 = 6
n2 = 77
less_than = n1 < n2

p "Is #{n1} less than #{n2}? #{less_than}" 

p "Is #{n1} odd? #{n1.odd?}"

p n1.class

p n1 == n2

p n1 != n1

p n1 == n1.to_s

p n1 != n2

str_1 = "hello".upcase
str_2 = "HELLO"

p "Is #{str_1} == #{str_2}?: #{str_1 == str_2}"

#Wow pretty useful and descriptive methods
p 10.between?(1, 20)
p 33.9.between?(1, 20)

#Float Methods

p 10.6.floor
p 10.6.ceil
p 10.5.round

p 3.1415.round(3) #It rounds the first 3 numbers

#Absolute Value

p -55.abs
p 55.abs

#Assignment
# I can add as in python with the shrtocut +=, -= 
a = 10
a = a + 3
p a
a += 1
p a
a-= 12
p a
a*=3
p a
a %= 2
p a

#Blocks 
#I can repeat as many times as i want
puts 
puts "Blocks"
puts

3.times { puts "Hello" }
puts

3.times do
    puts "Wello"
    puts "Horld"
end

5.times do |count|
    puts "Im:#{count}"
    puts ":D"
end

#Proffesor's Challenge
#Print the first ten multiples of 3 using times method

10.times {|i| puts "#{3*(i+1)}" }

puts
#Same but in reverse
puts "Downto"

#It's inclusive
10.downto(1) {|i| puts "#{i}" }


#It's inclusive
17.upto(20) {|i| puts "#{i}" }

#Step method .step(goal, step)
0.step(100,20) {|i| puts "Wow, #{i}"}