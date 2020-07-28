# 1. Add two strings together that, when concatenated, return
#    your first and last name as your full name in one string.

"John " + "Doe"

# 2. Use the modulo operator, division, or a combination of both 
#    to take a 4 digit number and find the digit in the: 
#    1) thousands place 2) hundreds place 3) tens place 4) ones place

# thousands
4583 / 1000 

# hundreds
4583 % 1000 / 100

# tens 
4583 % 1000 % 100 / 10

# ones 
4583 % 1000 % 100 % 10 / 1

# 3. Write a program that uses a hash to store a list of movie titles 
#    with the year they came out. Then use the puts command to make 
#    your program print out the year of each movie to the screen. The 
#    output for your program should look something like this:

  # 1975
  # 2004
  # 2013
  # 2001
  # 1981

movie_titles = {
  movie1: 2010,
  movie2: 1955,
  movie3: 2004,
  movie4: 1997,
  movie5: 2015
}

movie_titles.each { |key, value| puts value }

# 4. Use the dates from the previous example and store them in an array. 
#    Then make your program output the same thing as exercise 3.

release_dates = [2010, 1955, 2004, 1997, 2015]

release_dates.each { |year| puts year }

# 5. Write a program that outputs the factorial of the numbers 5, 6, 7, and 8.

nums = [5, 6, 7, 8]

nums.each do |n| 
  print "The factorials of #{n} are:\n"

  count = n
  while count > 1
    puts n * (count - 1)
    count -= 1
  end
end

# 6. Write a program that calculates the squares of 3 float numbers 
#    of your choosing and outputs the result to the screen.

puts 4.312 * 4.312
puts 20.56 * 20.56
puts 91.98 * 91.98

# 7. What does the following error message tell you?
#    SyntaxError: (irb):2: syntax error, unexpected ')', expecting '}'
#    from /usr/local/rvm/rubies/ruby-2.0.0-rc2/bin/irb:16:in `<main>'

# There is a closing paren instead of a closing curly brace or an 
# opening curly brace without a closing one.