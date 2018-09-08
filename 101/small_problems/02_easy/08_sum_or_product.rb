def sum_or_product
  puts "Please enter an integer greater than 0:"
  n = gets.chomp.to_i

  puts "Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp

  result = operation == 's' ? 0 : 1

  count = result
  while count <= n
    if operation == 's'
      result += count
    else
      result *= count
    end
    count += 1
  end

  puts result
end

sum_or_product