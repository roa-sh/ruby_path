# This is code is for study Blocks, Procs and Lambadas in ruby
# Author: @roa-sh

# Yield keyword

def pass_control 
  print 'Hello! Welcome '
  word = yield
  puts "to #{word}, take a place!"
end

str = 'kommit'
pass_control { str }

# Procs
cubes = Proc.new { |n| n**3}

a = [1, 2, 3, 4]
b = [5, 6, 7, 8]
c = [9, 10, 11, 12]

a_cubes = a.map(&cubes)
b_cubes = b.map(&cubes)
c_cubes = c.map(&cubes)

p a_cubes
p b_cubes
p c_cubes

# Procs 
squares = Proc.new { |n| n**2 }
a_squares, b_squares, c_squares = [a, b, c].map { |array| array.map(&squares) }
p 'Squares'
p a_squares, b_squares, c_squares

# Yielding with arguments

def number_evaluation(num1, num2, num3)
  yield(num1, num2, num3)
end

sum = number_evaluation(5, 10, 15) { |num1, num2, num3| num1 + num2 + num3 }
prod = number_evaluation(5, 10, 15) { |num1, num2, num3| num1 * num2 * num3 }

p sum
p prod

# pass a ruby method as Proc

p ([1, 2, 3, 4, 5].select { |num| num.even? })
p [1, 2, 3, 4, 5].select(&:even?) # I can make the same by passing the Proc(&) :even
# Is a symbol bc i guess ruby has a built in hash(dictionary) with all the procs 
#What could happen if i overwrite the :even? proc

p [1, 2, 3, 4, 5].reject(&:even?) # rejecting elements that are even


# Lambdas, almost the same as Procs

duplicate_lambda = lambda {|n| n*2}
p duplicate_lambda.call(5)

# the difference with proc is that the number of parameters in lambda are strictly necesary
# p duplicate_lambda.call(3, 5) # this returns an error

# Make a program that converts from USD to euros, pesos and rupees.

TO_PESOS = lambda { |value| value * 3800 }
TO_EUROS = lambda { |value| value * 0.95 }
TO_RUPEES = lambda { |value| value * 68.13 }

usd = '10'
def convert(usd)
  usd = usd.to_i
  p usd
  if usd.is_a?(Integer)
    p 'ola entro'
    pesos = TO_PESOS.call(usd)
    euros = TO_EUROS.call(usd)
    rupees = TO_RUPEES.call(usd)
    return pesos, euros, rupees
  end
end
p convert(usd)