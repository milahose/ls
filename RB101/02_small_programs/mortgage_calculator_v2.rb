def prompt(msg)
  print "=> #{msg}"
end

def integer?(input)
  /^-?\d+$/.match(input)
end

def float?(input)
  /\d/.match(input) && /^-?\d*\.?\d*$/.match(input)
end

def valid_number?(n)
  (integer?(n) || float?(n)) && n.to_f > 0
end

def get_loan_value(value_description)
  val = ''
  loop do
    prompt "Please enter the #{value_description}"
    val = gets.chomp

    if valid_number?(val)
      break
    else
      prompt "Hmm... that doesn\'t look like a valid input\n"
    end
  end
  val
end

def format_number(n)
  n = n.round(2)
  change = (n % 10).round(2)
  n_str = n.to_i.to_s

  count = n_str.length - 1
  while count >= 2
    count -= 2
    n_str = n_str.insert(count, ',')
  end

  n_str + change.to_s.slice(1, 3)
end

prompt "Welcome to the Calculator App!\n"

loop do
  loan_amount = get_loan_value("loan amount in dollars: $").to_i
  interest_rate = get_loan_value(
    "Annual Percentage Rate (APR) as a whole number: "
  ).to_f
  loan_duration = get_loan_value("loan loan duration in years: ").to_i

  loan_duration_in_months = loan_duration * 12
  monthly_interest_rate = (interest_rate / loan_duration_in_months) * 0.1

  divisor = (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months))
  monthly_payment = loan_amount * (monthly_interest_rate / divisor)

  prompt "Your monthly payment is: $#{format_number(monthly_payment)}.\n"
  prompt 'Would you like to perform another calculation? (y/n): '
  repeat = gets.chomp.downcase

  break unless repeat.start_with? 'y'
end

prompt "Goodbye!\n"
