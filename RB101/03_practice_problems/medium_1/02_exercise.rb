# The result of the following statement will be an error:
puts "the value of 40 + 2 is " + (40 + 2)

# Why is this and what are two possible ways to fix this?

# No implicit conversion of intergers to string
# can fix by calling to_s on the ints or using interpolation

puts "the value of 40 + 2 is #{40 + 2}"
