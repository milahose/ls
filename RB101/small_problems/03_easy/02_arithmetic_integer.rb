def arithmetic
  puts "==> Enter the first number:"
  n1 = gets.chomp.to_i

  puts "==> Enter the second number:"
  n2 = gets.chomp.to_i

  puts "#{n1} + #{n2} #{n1 + n2}"
  puts "#{n1} - #{n2} #{n1 - n2}"
  puts "#{n1} * #{n2} #{n1 * n2}"
  puts "#{n1} / #{n2} #{n1 / n2}"
  puts "#{n1} % #{n2} #{n1 % n2}"
  puts "#{n1} ** #{n2} #{n1 ** n2}"
end

arithmetic