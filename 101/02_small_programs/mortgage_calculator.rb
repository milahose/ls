def prompt(msg)
  puts "=> #{msg}"
end

loop do
  prompt('Welcome to Mortgage Calculator!')
  prompt('-------------------------------')

  prompt('What is your loan amount?')

  amount = nil
  loop do
    amount = gets.chomp

    if amount.empty? || amount.to_f < 0.001
      prompt('Please enter a positive number:')
    else
      break
    end
  end

  prompt('What is the Annual Percentage Rate (APR) on your loan?')
  prompt('(Example: 5 for 5% or 2.5 for 2.5%)')

  apr = nil
  loop do
    apr = gets.chomp

    if apr.empty? || apr.to_f < 0.001
      prompt('Please enter a positive number:')
    else
      break
    end
  end

  prompt('What is your loan duration (in years)?')

  duration = nil
  loop do
    duration = gets.chomp

    if duration.empty? || duration.to_i < 0
      prompt('Please enter a valid number:')
    else
      break
    end
  end

  annual_interest = apr.to_f / 100
  monthly_interest = annual_interest / 12
  months = (duration.to_i * 12).to_i

  monthly_payment = amount.to_f *
                    (monthly_interest / (1 - (1 + monthly_interest)**-months))
  monthly_payment = monthly_payment.round(2)

  prompt("Your monthly payment is: $#{monthly_payment}")

  prompt('Would you like to perform another calculation?')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for using the Mortgage Calculator!')
prompt('Goodbye!')
