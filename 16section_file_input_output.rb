# This is code is for study Files inpuit and Output in ruby
# Author: @roa-sh


# Reading Line per line
File.open('read_file.txt').each do |line|
  p line
end

# Write to a file
File.open('myFirstFile.txt', 'w') do |file|
  file.puts 'This is my first line!'
  file.write 'No line break with .write'
  file.puts 'pretty cool!'
end

# Append at the end to a file
File.open('myFirstFile.txt', 'a') do |file|
  file.puts 'This goes at the end, it doesn\'t overwrite the previous'
end

# Rename and Delete Files
File.rename('myFirstFile.txt', 'somethingBetter.txt')
if File.exist?('somethingBetter.txt')
  File.delete('somethingBetter.txt')
end

# Command line arguments ARGV
ARGV.each do |argument|
  number = argument.to_i
  puts "The square of #{number} is #{number**2}"
end

# The Load Method, can call other ruby files to be executed just once
load 'file_tobe_loaded.rb'

# The include method calls a file and it can be used as much as you want
require './file_tobe_loaded'

