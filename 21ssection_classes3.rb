# This code is for study Classes 3 in ruby
# Author: @roa-sh

class Employee 

  @@employees = 0
  attr_accessor :age
  attr_reader :name

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduce
    "Hi my name is #{@name} and i'm #{@age} years old"
  end

  def employees
    @@employees
  end

end

class Manager < Employee
  def yell
    'Who is the boss? I\'m the boss'
  end

  def introduce 
    "#{super} and I'm a Manager too "
  end

  def initialize(name, age)
    super
    @@employees += 1
    @name = name
    @age = age
  end
end

class Worker < Employee
  def clock_in(time)
    "Starting my shift at #{time}"
  end

  def yell
    'Im working!!!!'
  end
end


bob = Manager.new("Bob", 48)
rick = Manager.new("rick", 48)
lady = Manager.new("lady", 48)
mel = Manager.new("mel", 48)
juan = Worker.new("Juan", 21)

p bob.introduce
p rick.introduce
p lady.introduce
p mel.introduce
p juan.introduce

p Manager.ancestors
p Worker.ancestors

p Manager < Employee #check inheritance (child or parent)
p Worker < Employee
p Manager == Worker 

# inmediate instance 
p juan.instance_of?(Worker)
p juan.instance_of?(Manager)
p bob.instance_of?(BasicObject)
p juan.instance_of?(Employee)

# Exclusive instance methods in subclasses

p juan.clock_in(Time.now)
p bob.yell
p juan.yell

# class variables, i can get the number of employees registered so far
p juan.employees

# singleton method, applies just to one instance (or selected)
def mel.introduce
  "Hi i'm mel and i'm amazing!"
end

p mel.introduce
p mel.singleton_methods

# hash as initialize argument
class Candidate
  attr_accessor :name, :age, :occupation, :hobby, :birthplace

  def initialize(name, info = {})
    defaults = { age: 22, occupation: 'Politician', hobby: 'yell', birthplace: 'Colombia' }
    defaults.merge!(info)
    @name = name
    @age = defaults[:age]
    @occupation = defaults[:occupation]
    @hobby = defaults[:hobby]
    @birthplace = defaults[:birthplace]
  end
end

info = {age: 21, occupation: 'engineer.std', birthplace: 'Armenia',
        hobby: 'scouting' }
senator1 = Candidate.new('Juan',info)
p senator1

senator2 = Candidate.new('Maria')
p senator2
