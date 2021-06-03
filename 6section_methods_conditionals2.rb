# This is code is for study methods 2 in ruby
# Author: @roa-sh

def look_for_place(credentials, age, nat)
  p nat.upcase == 'JAPANESE'
  if nat.upcase == 'JAPANESE'
    case credentials
    when 'vip'
      age < 18 ? "Pls show me your parent's permmision" : 'Welcome sir'
    when 'gold'
      age < 18 ? "Pls give me your id and parent's permmision" : 'Welcome sir, you can go on this line, wait pls'
    when 'visitor'
      age < 18 ? 'You are not allowed here' : 'Sir, i ask you pls not to come to this area'
    else
      'Not valid'
    end
  else
    'Not japanese, pls go on this line.'
  end
end
i = 0
age = 15
while i < 3
  credentials = 'vip'
  age += 1
  puts age
  puts i
  nat = 'Japanese'
  puts look_for_place(credentials, age, nat)
  i += 1
end
puts "i is #{i}"
until i > 9
  puts i
  i += 1
end
