# This is code is for study arrays 3 in ruby
# Author: @roa-sh

# Object Pointers and Object Copies
a = [1, 2, 3]
b = a

b.push(4)
p a,b
p a.object_id == b.object_id

# Object Copies, duplication
c = a.dup 

p a, c

p a.object_id.equal?(c.object_id)

# Splat Arguments, to have multiple arguments in a method without declaring the number

def sum (*numbers)
  sum = 0
  numbers.each { |n| sum += n}
  sum
end
p sum(1,2,3,4,5,6,7,8,9)

# .any and .all to search in arrays
p(a.any? { |n| n.odd? })
p(a.all? { |n| n.odd? })

# .find or .detect 
p(a.find { |n| n > 3 })
p(a.detect { |n| n > 3 })

# .uniq remove duplicate elements
arr = ["Maria", "Maria", "Mario", "Cami"]
p arr.uniq

# .compact remove nil elements
arr += [nil]*2
p arr
p arr.compact

# .inject and .reduce (I guess it's very specific, more than i wnated to)

result = [10, 20, 30, 40].reduce(0) do |previous, current|
  puts "The previous value is #{previous}"
  puts "The current value is #{current}"
  previous+current
end

p result

# .flatten to make single dimension array from a multi dimensional one

arr = [["Maria", 21], ["Maria", 23], ["Mario", 20], ["Cami", 44]]
p arr.flatten

arr.flatten!
p arr
p arr[1].class
p arr[1].is_a?(Integer)
arr = arr.reject { |e| e.is_a?(Integer) }
p arr
# .zip puts other array elements into a firstone in the same positions

tags = ['Who?']*4
p tags
arr = arr.zip(tags)
p arr

# .sample of an array
flavors = ['Chocolate', 'Vanilla', 'Strawberry', 'Rum Raisin']

p flavors.sample(2)

# Union and Intersection of  Arrays, like sets

a1 = [1, 2, 4, 3, 5]
a2 = [4, 6]

p a1 | a2

p a1 & a2