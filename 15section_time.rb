# This code is for study Time method in ruby
# Author: @roa-sh

# Time method
today = Time.new
p today

# Methods of a Time Object
p today.day
p today.month
p today.year
p today.hour

# Predicate MEthods on a Time Object
date =  Time.new(2015, 1, 1)

p date.monday?
p date.dst? # Daylight saving time

# adding time by seconds
p date
p date + (3 * 60 * 60 * 24) # n * 60 seconds = n in minutes / n * 60 * 60 * 24 = n in days

# Comparable methods on a Time Object
p "Is #{date} before than #{today}? #{date < today}"

birthday = Time.new(1999, 9, 7 )
p "Is #{birthday} between #{date} and #{today} #{birthday.between?(date, today)}"

# Convert to other data type
p birthday.ctime
p birthday.to_s
p birthday.to_a

# Give some format 
p birthday.strftime('%d of %B of %Y')


# Read strings and convert them into date
require 'time' # needs a library
puts Time.parse('2021-01-01')

