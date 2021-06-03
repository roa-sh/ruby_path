# This is code is for study Arrays in ruby
# Author: @roa-sh

# Arrays and manipulation

toys = %w[BuzzLightYear Woody MrPotatoFace Rex Jessy Hank]

p toys

# This could be useful for iterating over the owrds of a paragraph
buzz = %w[buzz light year]
puts buzz

(0...toys.length).each do |i|
  p toys[i]
end

# Create a big array of hellos
hi = Array.new(10, 'Hello')

p hi[-2]

# fetc works similar to [], but you can say what to return if is not a valid pos
p hi.fetch(100, 'Unknow')

# Access Sequential Array Elements
p toys[2, 4]
p toys[2..4]

# Access NOT Sequential Array Elements

p toys.values_at(1, 4, 5, -300)

# slice Method, the same as []
p toys.slice(2..3)
p toys[2..3]

# Overwrite elements

toys[3] = 'Banana'
p toys

toys[6] = 'Strawberry' # fills with nil if the position doesnt exist
p toys

toys[1..3] = 'Not Toy able' # Replaces 1 to 3 positions with "Not Toy able"
p toys

# Length, size, count methods

p toys.length
p toys.size

# count how many times an object occurs in the array
toys.push('BuzzLightYear')
p toys
p toys.count('BuzzLightYear')

# .empty method

p toys.empty?
p [].empty?
p [nil, nil].empty?

# .nil?
puts
puts '.nil?'
puts
p toys.nil?
p [].nil?
p [nil, nil].nil?

# .first and last methods
p toys
p toys.first
p toys.last
p toys.first(5)
p toys.last(2)

# .push , shovel and .insert

toys.push('Andy')
p toys
toys << 'Sally' << 'Jeremy'
p toys

toys.insert(1, 'Woody', 'MrPotatohead')
p toys

# .pop method removes the last element
toys.pop
p toys

arr = toys.pop(3) # removes last 3 elements
p toys, arr

# .shift and .unshift
# same as pop but at the beginig.

p toys.shift
p toys
# unshift adds at the begining
toys.unshift('Megatron', 'Barbie')
p toys

# The spaceship operator

p [7, 2, 3] <=> [3, 4, 5]

# Ranges to array

letters = 'a'..'q'
p letters.to_a

# .is_a?(class)
# look if an object is an instance of a class
p 1.is_a?(Integer)
p 1.is_a?(String)
p toys.is_a?(Array)
