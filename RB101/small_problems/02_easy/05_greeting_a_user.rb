def greeting
  puts "What is your name?"
  name = gets.chomp

  if name[name.length - 1] == '!'
    puts "HELLO #{name[0, name.length - 1].upcase}. WHY ARE WE SCREAMING?"
  else 
    puts "Hello #{name.capitalize}."
  end
end

greeting