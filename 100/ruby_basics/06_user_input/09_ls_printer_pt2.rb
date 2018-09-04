user_input = nil

loop do
  puts ">> How many output lines do you want? Enter a number >= 3 (Q to quit):"
  user_input = gets.chomp

  if user_input.to_i.class == Integer && user_input.to_i >= 3
    user_input.to_i.times { puts "Launch School is the best!" } 
  elsif user_input.upcase == 'Q'
    break
  else
    puts ">> That's not enough lines."
  end
  
end