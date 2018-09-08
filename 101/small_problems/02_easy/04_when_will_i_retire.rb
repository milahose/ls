require 'date'

def when_will_i_retire
  puts "What is your age?"
  current_age = gets.chomp.to_i

  puts "At what age would you like to retire?"
  retirement_age = gets.chomp.to_i

  years_to_retire = retirement_age - current_age
  current_year = Date.today.year

  puts "It's #{current_year}. You will retire in #{current_year + years_to_retire}.\nYou have only #{years_to_retire} years of work to go!"
end

when_will_i_retire