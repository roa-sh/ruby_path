def calculator(n1, n2, op)
    case op
    when 1
        return n1+n2
    when 2
        return n1-n2
    when 3
        return n1*n2
    when 4 
        return n1.to_f/n2
    else
        return "Please enter a valid operation"
    end
end

def are_odd(n1, n2)
    # p "in odd"
    if n1.odd? && n2.odd?
        return "both numbers #{n1} and #{n2} are odd"
    elsif n1.odd?
        return "just #{n1} is odd" 
    elsif n2.odd?
        return "just #{n2} is odd"
    else
        return "both numbers are even"
    end
end

puts "Welcome to the Calculator and other stuff"
puts "This is for practice section 5 in ruby course"
puts "Enter a number"
n1 = gets.to_i
puts "Enter a number again"
n2 = gets.to_i
puts <<-MLS 
    What operation do you want to do:
        1 -> +
        2 -> -
        3 -> *
        4 -> /
    MLS

op = gets.to_i

p "The operation is equal to:#{calculator(n1, n2, op)}"
p are_odd(n1,n2)


#.respond_to?("method_name")
#Tells me if an object can call the method sent by parameters
#In this example, im asking if the object 1000, that is an integer, can call the method respond_to
p 1000.respond_to?("next")
p 1000.respond_to?("length")

#Ternary operator

p "Hellow" == "Hellow" ? "Equal": "Not equal" 
