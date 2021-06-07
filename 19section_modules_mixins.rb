# This code is for study Modules in ruby
# Author: @roa-sh

# A module is like a toolkit where you can save your utilities to be imported in as much other files as you want.
# All is in /Modules
# All is in /Mixins

# Import the Modules

require './Modules/circle'
require './Modules/square'
require './Modules/rectangle'

puts Circle.area(5)
puts Square.area(6)
puts Rectangle.area(5, 7)


# The Math Module built in ruby
puts Math.sqrt(25)
puts Math.sin(90)
puts Math::PI

# Mixins
# It means, to implement (mix) some modules into a class





