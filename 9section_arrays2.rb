# This is code is for study Arrays 2 in ruby
# Author: @roa-sh

candies = ['Choco Ramo', 'Milky Way', 'Jet', 'Bubbaloo', 'Pinpop']
drinks = %w[Cocacola Pepsi 7Up Fanta]

# The .each method pretty useful for iterations over the array

candies.each { |c| p c }

# last line is the same as
candies.each do |c|
  p "My candy is #{c}"
end

# each within each

drinks.each do |d|
  candies.each do |c|
    p "WOOOOOOW #{d} with #{c}"
  end
end
# last line is the same as

drinks.each { |d| candies.each { |c| p "Yummy! #{d} with #{c}" } }

# For loop
# This scapes the variable outside the loop
for candy in candies
  p candy
end

# Look if i print candy, it'd display the last item
p candy

# So .each method is more secure

# each with index method

drinks.each_with_index do |d, i|
  p "Drink number #{i}, #{d}!!!"
end

# .map for a new array from another array
nums = Array(1..5)

squares1 = nums.map { |n| n**2 }
p squares1

# is the same as
squares2 = []
nums.each { |n| squares2 << n**2 }
p squares2

# .collect is the same as map

arrr = [3, 89, 11, 15, 89]

def cubes(arr)
  arr.map { |a| a**3 }
end

p cubes(arrr)

# iterating over an array whit while or until, it can be replaced with .each_with-index
i = 0
while i < arrr.length
  if (arrr[i] % 3).zero?
    p 'Divisible by 3'
  else
    puts arrr[i]
  end
  i += 1
end

# .reverse an array
p arrr.reverse

# .sort an array
p arrr.sort
p arrr

# .concat
arrr2 = %w[Hola Mundo]
arrr3 = arrr.concat(arrr2)
p arrr3

arrr3.pop(2) # To pop the strings at the end

# .max and .min
p arrr3.min
p arrr3.max

# .include?
p arrr3.include?('3') # doesn'tinclude str is the integer itself

# .index of a given element
p arrr3
p arrr3.index(89) # first show

# .select method is like a filter

matches = arrr3.select { |e| (e % 3).zero? }
p matches

words = %w[level selfless racecar dinosaur]

palindromes = words.select { |w| w == w.reverse }
p palindromes

# .reject method opposit of select

not_div_by3 = arrr3.reject { |e| (e % 3).zero? }
p not_div_by3

# Unpack multidimensional array

md_arr = [['Juan', 21], ['Camila', 22], ['Daniel', 23, 3000]]

p md_arr[2][2]

# .partition method returns 2 arrays
# first: all accepted
# second: all rejected

partition_ = arrr3.partition { |e| (e % 3).zero? }
p "First array #{partition_[0]} those who are accepted, and Second array #{partition_[1]} those who are not."
