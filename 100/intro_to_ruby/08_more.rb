# 1. Write a program that checks if the sequence of characters "lab" 
#    exists in the following strings. If it does exist, print out the word.

  # "laboratory"
  # "experiment"
  # "Pans Labyrinth"
  # "elaborate"
  # "polar bear"

def has_lab?(string)
  if string.downcase =~ /lab/
    puts string
  else
    puts "Sorry, no match found"
  end
end

# 2. What will the following program print to the screen? What will it return?

def execute(&block)
  block
end

execute { puts "Hello from inside the execute method!" }

# Answer: Nothing, because proc is not called.

# 3. What is exception handling and what problem does it solve?
# Answer: Exception handling provides a way to find errors in
# code and to handle those errors in a way the developer prefers

# 4. Modify the code in exercise 2 to make the block execute properly.

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# 5. Why does the following code...

def execute(block)
  block.call
end

execute { puts "Hello from inside the execute method!" }

# Give us the following error when we run it?
#   block.rb1:in `execute': wrong number of arguments (0 for 1) (ArgumentError)
#   from test.rb:5:in `<main>'

# Answer: Because the blcok is not passed in properly, using the '&' to
# denote that it is a block.