# Create a hash that expresses the frequency with
# which each letter occurs in this string:
statement = "The Flintstones Rock"
statement_hash = {}

statement.each_char do |letter|
  if statement_hash[letter]
    statement_hash[letter] += 1
  else
    statement_hash[letter] = 1
  end
end

puts statement_hash
