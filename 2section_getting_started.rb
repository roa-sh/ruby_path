# This code was made for practicing ruby :D
# Author: @roa-sh

5.times { puts 'Hello world for everybody' }
puts

# The puts method---------
# and can prints aritmetic operations too
puts '######The puts Method'
puts 'This method displays'
puts 'Every line separately'
puts ':)'
puts

# The print method---------
# This method doesn't display per line, it makes it all together.
print '#####The print method'
print 'Hello '
print 'World'
puts
puts

# The p method---------
p '####The p method'
p 'This method prints a more descriptive object'
p "Strings with all their
properties, for example line break"

# Basic Arithmetic
p 1 + 4
p 10 - 6
p 'Hola ' + 'Mundo'
p 13 / 2
p 13 / 2.0
p 3**3
p 5 % 2
puts
# Very similar to python

# Variables
puts '####Variables'
my_name = 'juan manuel'
my_age = '21'
my_numeric_age = 21

puts my_name + ' ' + my_age

# Swapping Variables
puts 'Swapping variables'
a = 10
b = 20
c = 30

a, b, c = c, b, a

p a, b, c

# Constants
puts 'COSNTANTS'
MY_CONSTANT_NAME = 'JUAN M'

puts MY_CONSTANT_NAME

# Objects

puts 'murcielago tiene todas las vocaless'.length
puts 10.next
puts 'Whaaat'.inspect # This is the same as p method
puts

# String Interpolation
# String interpolation let me concatenate any kind of object no casting needed
str_ = 'need some'
puts '####String Interpolation'
p "I  #{str_} string interpolation"
p "I #{str_} rice to complete the recipe"

p "I'm #{my_name} and i'm #{my_numeric_age} years old"

# gets method
string_input = gets.chomp # it deletes the last \n character
p string_input.chomp # called twice, doesn't matter it just works one time
