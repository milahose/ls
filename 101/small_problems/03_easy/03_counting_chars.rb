def counting_chars
  puts "Please write word or multiple words:"
  str = gets.chomp

  puts "There are #{str.tr(' ', '').length} characters in \"#{str}\"."
end

counting_chars