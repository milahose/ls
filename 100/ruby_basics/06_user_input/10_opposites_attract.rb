n1 = nil
n2 = nil

def valid_number?(number_string)
  number_string.to_i.to_s == number_string && number_string.to_i != 0
end

loop do
  puts ">> Please enter a positive or negative integer:"
  n1 = gets.chomp.to_i

  puts ">> Please enter a positive or negative integer:"
  n2 = gets.chomp.to_i

  break if (valid_number?(n1.to_s) && valid_number?(n2.to_s)) && n1 < 0 || n2 < 0
  
  puts ">> Invalid input. Only non-zero integers are allowed." if n1 == 0 || n2 == 0
  puts ">> Sorry. One integer must be positive, one must be negative.\n>> Please start over." if n1 > 0 && n2 > 0
end

puts ">> #{n1} + #{n2} = #{n1 + n2}"