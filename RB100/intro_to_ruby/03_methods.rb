# 1. Write a program that prints a greeting message. 
#    This program should contain a method called greeting 
#    that takes a name as its parameter and returns a string.

def greeting(name)
  "Hi, #{name}!"
end

puts greeting('John')

# 2. What do the following expressions evaluate to?

  x = 2
  # => 2

  puts x = 2
  # => nil

  p name = "Joe"
  # => "Joe"

  four = "four"
  # => "four"

  print something = "nothing"
  # => nil

# 3. Write a program that includes a method called 
#    multiply that takes two arguments and returns 
#    the product of the two numbers.

def multiply(n1, n2)
  n1 * n2
end

puts multiply(3, 5)

# 4. What will the following code print to the screen?
#    (It will be nothing, 
#    because the return keyword exits out of the method)

def scream(words)
  words = words + "!!!!"
  return
  puts words
end

scream("Yippeee")

# 5. 1) Edit the method definition in exercise #4 so that it does print 
#     words on the screen. 2) What does it return now?
#     (Will print: "Yippeee!!!!")

def scream(words)
  words = words + "!!!!"
  return words
end

scream("Yippeee")

# 6. What does the following error message tell you?

  # ArgumentError: wrong number of arguments (1 for 2)
  # from (irb):1:in `calculate_product'
  # from (irb):4
  # from /Users/username/.rvm/rubies/ruby-2.0.0-p353/bin/irb:12:in `<main>'

# That calculate_product was expecting two arguments, but only received one.
