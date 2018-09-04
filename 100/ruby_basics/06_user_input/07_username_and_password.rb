USERNAME = 'admin'
PASSWORD = "SecreT"

loop do
  puts ">> Please enter your username:"
  username = gets.chomp
  puts ">> Please enter your password:"
  password = gets.chomp
  break if username == USERNAME && password == PASSWORD
  puts ">> Authorization failed!"
end

puts "Welcome!" 

