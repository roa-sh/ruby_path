# This is code is for study methods in ruby
# Author: @roa-sh

def calculator(nm1, nm2, op1)
  case op1
  when 1
    nm1 + nm2
  when 2
    nm1 - nm2
  when 3
    nm1 * nm2
  when 4
    nm1.to_f / nm2
  else
    'Please enter a valid operation'
  end
end

def are_odd(nm1, nm2)
  if nm1.odd? && nm2.odd?
    "both numbers #{nm1} and #{nm2} are odd"
  elsif nm1.odd?
    "just #{nm1} is odd"
  elsif nm2.odd?
    "just #{nm2} is odd"
  else
    'both numbers are even'
  end
end

puts 'Welcome to the Calculator and other stuff'
puts 'This is for practice section 5 in ruby course'
puts 'Enter a number'
nm1 = gets.to_i
puts 'Enter a number again'
nm2 = gets.to_i
puts <<-MLS
    What operation do you want to do:
        1 -> +
        2 -> -
        3 -> *
        4 -> /
MLS

op = gets.to_i

p "The operation is equal to:#{calculator(nm1, nm2, op)}"
p are_odd(nm1, nm2)

# .respond_to?("method_name")
# Tells me if an object can call the method sent by parameters
# In this example, im asking if the object 1000, that is an integer, can call the method respond_to
p 1000.respond_to?('next')
p 1000.respond_to?('length')

# Ternary operator

p 'Hellow' == 'Hellow' ? 'Equal' : 'Not equal'
