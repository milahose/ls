def searcher
  arr = []
  
  puts "==> Enter the 1st number:"
  answer = gets.chomp.to_i
  arr << answer

  puts "==> Enter the 2nd number:"
  answer = gets.chomp.to_i
  arr << answer

  puts "==> Enter the 3rd number:"
  answer = gets.chomp.to_i
  arr << answer

  puts "==> Enter the 4th number:"
  answer = gets.chomp.to_i
  arr << answer

  puts "==> Enter the 5th number:"
  answer = gets.chomp.to_i
  arr << answer

  puts "==> Enter the last number:"
  answer = gets.chomp.to_i

  arr.each do |n|
    if n == answer
      return "The number #{answer} appears in #{arr}."
    end
  end

  return "The number #{answer} does not appear in #{arr}."
end

puts searcher