# 1. Write a program called name.rb that asks the user to 
#    type in their name and then prints out a greeting 
#    message with their name included.

puts "What is your name? "
name = gets.chomp
puts "Hello there, #{name}!"

# 2. Write a program called age.rb that asks a user how old 
#    they are and then tells them how old they will be in 10, 
#    20, 30 and 40 years. Below is the output for someone 
#    20 years old.

puts "How old are you?"
age = gets.chomp.to_i
[10, 20, 30, 40].each { |num| puts "In 10 years you will be #{age + num}" }

# 3. Add another section onto name.rb that prints the name of 
#    the user 10 times. You must do this without explicitly 
#    writing the puts method 10 times in a row. Hint: you can
#    use the times method to do something repeatedly.

puts "What is your name? "
name = gets.chomp
10.times { puts "Hello there, #{name}!" }

# 4. Modify name.rb again so that it first asks the user for 
#    their first name, saves it into a variable, and then does 
#    the same for the last name. Then outputs their full 
#    name all at once.

puts "What is your first name? "
firstname = gets.chomp
puts "What is your last name? "
lastname = gets.chomp
puts "Hello there, #{firstname} #{lastname}!"

# 5. Look at the following programs...
#    What does x print to the screen in each case? 
#    Do they both give errors? Are the errors different? Why?

x = 0
3.times do
  x += 1
end
puts x

# and...

y = 0
3.times do
  y += 1
  x = y
end
puts x

# The first one 3 to the screen. The second one throws an error 
# "undefined local variable or methodbecause x is not available 
# as it is created within the scope of the do/end block.
