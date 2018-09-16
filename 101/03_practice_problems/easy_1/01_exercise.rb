# What would you expect the code below to print out?
numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

# => 1
# => 2
# => 2
# => 3

# because uniq is non mutating
# and puts calls to_s on each element
