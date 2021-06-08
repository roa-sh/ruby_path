# Monkey Patching (Customizing built in classes )
# Its like overwritting known method in a pecific sheet. 

# This utility for Array is just accesible by this file, no other one 
class Array
  def sum
    total = 0
    self.each { |e| total+=e if e.is_a?(Numeric) }
    total
  end
end

p [1, 'aasd', 4, 2, 3].sum


# Monkey patching string for a method that returns the sum of all the positions of the characters in the alhabet.

class String 

  def alphabet_sum
    alphabet = ('a'..'z').to_a
    sum = 0
    self.downcase.each_char do |c|
      sum += alphabet.index(c) +1 if alphabet.include?(c)
    end
    sum    
  end
end


p "aaa".alphabet_sum
p "zzads".alphabet_sum
p "Hello world".alphabet_sum


class Integer

  def minutes
    self * 60
  end

  def hours 
    self * 60 * 60
  end

  def days
    self * 60 * 60 *24
  end
end

p Time.now + 5.minutes
p Time.now + 3.hours
p Time.now + 4.days

