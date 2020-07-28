# Write a method that takes an integer, and converts it to a string
# representation. You may not use any of the standard conversion methods
# available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. You
# may, however, use integer_to_string from the previous exercise.
DIGITS = {
  0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
  5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(num)
  digits = num.digits.map { |n| DIGITS[n] }.join.reverse
end

def signed_integer_to_string(num)
  if num < 0
    '-' + integer_to_string(num)
  elsif num == 0
    '0'
  else
    '-' + integer_to_string(num)
  end
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
