def prompt(msg)
  puts "=> #{msg}"
end

def integer?(input)
  /^-?\d+$/.match(input)
end

def float?(input)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end

def valid_number?(n)
  integer?(n) || float?(n)
end

def operation_to_message(op)
  result = case op
           when '1'
             'Adding'
           when '2'
             'Subtracting'
           when '3'
             'Multiplying'
           when '4'
             'Dividng'
           end
  result
end

def get_number(nth_num)
  n = ''
  loop do
    prompt("Please enter the #{nth_num} number:")
    n = gets.chomp

    if valid_number?(n)
      break
    else
      prompt('Hmm... that doesn\'t look like a valid number')
    end
  end
  n
end

prompt('Welcome to Calculator! Enter your name:')
name = ''

loop do
  name = gets.chomp
  name.capitalize!

  if name.empty?
    prompt('Sorry, I didn\'t catch your name. Can you repeat that?')
  else
    break
  end
end

prompt("Hi #{name}!")

loop do
  n1 = get_number('first')
  n2 = get_number('second')

  operator_prompt = <<-MSG
    What type of operation would you like to perform?
      1) add
      2) subtract
      3) multiply
      4) divide
  MSG

  prompt(operator_prompt)
  operator = ''

  loop do
    operator = gets.chomp

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt('Must choose 1, 2, 3 or 4')
    end
  end

  prompt("#{operation_to_message(operator)} the two numbers...")

  result = case operator
           when '1'
             n1.to_i + n2.to_i
           when '2'
             n1.to_i - n2.to_i
           when '3'
             n1.to_i * n2.to_i
           when '4'
             n1.to_f / n2.to_f
           end

  prompt("The result is #{result}")
  prompt('Do you want to perform another calculation? (y/n)')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using the calculator. Goodbye!')
