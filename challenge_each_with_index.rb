# Write a loop that gives me a sum of
# the products of each index and its value

# nums = [1,2,3,4,5]
nums = Array(1..5)

sum = 0
nums.each_with_index do |n, i|
  sum += i*n
end

p sum


# Craete a method 
# That prints the product of the element and its index pos
# if the index pos is greater than the element


nums = [-1, 2, 1, 2, 5, 7, 3]

nums.each_with_index {|n, i| p n*i if i > n}