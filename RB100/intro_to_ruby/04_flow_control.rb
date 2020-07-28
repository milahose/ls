# 1. Write down whether the following expressions 
#    return true or false. 

# false
(32 * 4) >= 129

# false 
false != !true

# false
true == 4

# true
false == (847 == '847')

# true
(!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

# 2. Write a method that takes a string as argument. 
#   The method should return a new, all-caps version of 
#   the string, only if the string is longer than 10 characters. 
#   Example: change "hello world" to "HELLO WORLD".

def word_to_caps(string)
  string.upcase
end

word_to_caps('hello world')

# 3. Write a program that takes a number from the user 
#    between 0 and 100 and reports back whether the number 
#    is between 0 and 50, 51 and 100, or above 100.

puts "Please enter a number between 0 and 100."
n = gets.chomp.to_i

if n < 0
  puts "Please provide a number over 0"
elsif n > 100
  puts "Your number is over 100"
elsif n > 50 
  puts "Your number is between 51 and 100"
else
  puts "Your number is between 0 and 50"
end

# 4. What will each block of code below print to the screen? 
#    Write your answer on a piece of paper or in a text editor 
#    and then run each block of code to see if you were correct.

# => "FALSE"
'4' == 4 ? puts("TRUE") : puts("FALSE")

# => "Did you get it right?"
x = 2
if ((x * 3) / 2) == (4 + 4 - x - 3)
  puts "Did you get it right?"
else
  puts "Did you?"
end

# => "Alright now!"
y = 9
x = 10
if (x + 1) <= (y)
  puts "Alright."
elsif (x + 1) >= (y)
  puts "Alright now!"
elsif (y + 1) == x
  puts "ALRIGHT NOW!"
else
  puts "Alrighty!"
end

# 5. Rewrite your program from exercise 3 using a case statement. 
#    Wrap this new case statement in a method and make sure it still works.

def number_range(n)
  case
  when n < 0
    puts "Please provide a number over 0"
  when n > 100
    puts "Your number is over 100"
  when n > 50 
    puts "Your number is between 51 and 100"
  else
    puts "Your number is between 0 and 50"
  end
end

# 6. When you run the following code...

def equal_to_four(x)
  if x == 4
    puts "yup"
  else
    puts "nope"
end

equal_to_four(5)

# You get the following error message..

  # exercise.rb:8: syntax error, unexpected 
  # end-of-input, expecting keyword_end

# Why do you get this error and how can you fix it?
#   Because there is no end keyword for the if block,
#   this could be fixed by adding it.
