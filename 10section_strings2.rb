# This is code is for study Strings 2 in ruby
# Author: @roa-sh

sentence = 'Hello everybody this is my third day at kommit'
def longest_word(sentence)
  spl_str = sentence.split(' ')
  choosen = ''
  spl_str.each { |s| choosen = s if s.length >= choosen.length }
  return choosen
end

p longest_word(sentence)

# Iterate over chars
sentence.each_char { |c| p c }

# or it could be
chars_ = sentence.chars
chars_.each { |c| p c }

# .join method to join the elements with something in the middle

spl_str = sentence.split(' ') # have to convert into an array first
p spl_str.join('--')

# .count the times an element is in the array

p sentence.count('loae') # counts every char, not in the order

# .index already known
# .rindex is the same but in reverse
p 'Index and rindex'
p sentence.index('e')
p sentence.rindex('e')

# .insert method in a determined position
p sentence.insert(4, 'ikigai')

# .squeezee removes duplicated chars kommit ---> komit 
p sentence.squeeze

# .clear makes an string empty string
# p sentence.clear

# .delete chars froma a string
p sentence.delete('aeiou') #deleted all the vowels