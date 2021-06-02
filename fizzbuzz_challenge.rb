#This is a challenge proposed in the ruby course
#Rulessss
#1) A method have a number parameter, we have to iterate from 1 to the number.
#2) if the number is divisible by 3, print fizz
#3) if the number is divisible by 5, print buzz
#4) if is divisible by both, print fizzbuzz

def fizzbuzz(n)
    i = 1
    while i <= n
        print "#{i}->"
        div_by3 = i % 3 == 0 ? 1 : 0
        div_by5 = i % 5 == 0 ? 2 : 0
        fizzbuzz = div_by3 + div_by5
        
        case fizzbuzz
        when 1
            puts "(3)fizz"
        when 2
            puts "(5)buzz"
        when 3
            puts "(3,5)fizzbuzz"
        else
            puts nil
        end

        i += 1 
    end
end

puts "Welcome to fizzbuzz, pls enter a number:"
n = gets.to_i
fizzbuzz(n)


#Inline modifiers

p "Great choice!!" if n < 10

#Conditional Assignment

greeting = "kommit"
extraction = 100
letter = greeting[extraction]
letter ||= "Not Found"
p letter
