def sum(n)
  n.to_s.split('').map { |str| str.to_i }.reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45