# This is code is for study Regular Expresion in ruby
# Author: @roa-sh

str = "juanmanuelroam@gmail.com"

# start_with? end_with? Predicative methods for strings
p str.start_with?('Email')
p str.end_with?('.com')

# include
p str.include?('@')

# Regular Expresions =~ //
p str =~ /@/ # returns the index of @

# scan method
email = str.scan(/.+@.+\.com/)
p email
p "#{str} is an email" if email.length > 0 

# \d      any digit
# \d+     digitts in a row
# \D      any NON digit
#  .      any character
#  .+     any characters in a row
#  \.     litterally search for a . dot
# \s      any white space
# \S      any NON white space

# Anchors
# \A      search at the begining of the str
# \z      search at the en of the str

# []      chars inside doesn't matter the order 

# Exclude chars [^ ]
p str.scan(/[^aeiou]/)

# .sub and .gsub methods to substitute
p 'my name is skrillex skrilitor'.sub('skril', 'f') # just do it once

p 'my name is skrillex skrilitor'.gsub('skril', 'f') # do it for all, globally