# extends insert functionalities in the class itself, but no in the objects created from the class.


module Announcer
  def who_am_i
    "The name of this class is #{self}"

  end
end

class Dog
  extend Announcer
end

class Cat
  extend Announcer
end

# it works, bc it's a class
p Cat.who_am_i

# doesn't work, bc it's an object
clifford = Dog.new
p clifford.who_am_i