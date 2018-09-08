def tip_calculator
  puts "What is the bill?"
  bill = gets.chomp.to_f

  puts "What is the tip percentage?"
  percentage = gets.chomp

  if percentage.length > 1
    percentage = '.' + percentage
    percentage = percentage.to_f
  else 
    percentage = '.0' + percentage
    percentage = percentage.to_f 
  end

  tip = bill * percentage

  puts "The tip is $#{tip}\nThe total is $#{bill + tip}"
end

tip_calculator