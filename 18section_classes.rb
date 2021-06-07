# This code is for study Classes in ruby
# Author: @roa-sh


# We can identify what class an oibject is
p 33.class
p 'sorry'.class
p 4.56.class
puts
# .superclass and .ancestors
p 753.class.superclass  # returns the father class
p 753.class.ancestors   # returns all the classes above the object 

# .methods
puts 678.methods # shows all the methods that can be called from the current object

# Rest in Classes Folder