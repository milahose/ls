# 1. What does the each method in the following 
#    program return after it is finished executing?

x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# => [1, 2, 3, 4, 5]

# 2. Write a while loop that takes input from the user, 
#    performs an action, and only stops when the user types 
#    "STOP". Each loop can get info from the user.

def almost_infinite
  puts "What would you like me to output?"
  answer = gets.chomp

  while answer != "STOP" do
    puts answer
    puts "If you would like to stop, please type 'STOP'"
    answer = gets.chomp
  end
end

# 3. Use the each_with_index method to iterate 
#    through an array of your creation that prints 
#    each index and value of the array.

test_array = ['hello world', 'printing', true, 48, 'last one']
test_array.each_with_index { |el, i| puts "#{i}: #{el}" }

# 4. Write a method that counts down to zero using recursion.

def recursive_countdown(n)
  if n <= 0
    puts n
  end

  puts n
  recursive_countdown(n-1)
end

recursive_countdown(20)
