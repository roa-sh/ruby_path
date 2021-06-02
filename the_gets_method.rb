puts "Welcome, please give some data :B"
puts "What's your name?"
name_ = gets.chomp
puts "Alright, tell me your age pls"
age_ = gets.chomp.to_i

if age_ > 50
    puts "Ok Mr.#{name_} you must go for a vaccine right now :D AGE: #{age_}"
else
    puts "Ohh it seems you are very young #{name_}, wait for your vaccine in house AGE: #{age_}"
end

