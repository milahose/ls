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
  integer?(n) || float?(n)
end



loop do
  prompt "Please enter the loan amount in dollars: $"
  loan_amount = gets.chomp.to_i

  prompt "Please enter the Annual Percentage Rate (APR) as a whole number: "
  interest_rate = gets.chomp.to_f

  prompt "Please enter the loan duration in years: "
  loan_duration = gets.chomp.to_i

  loan_duration_in_months = loan_duration * 12
  monthly_interest_rate = (interest_rate / loan_duration_in_months) * 0.1

  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))

  puts "Your monthly payment is: $#{monthly_payment.round(2)}."
end