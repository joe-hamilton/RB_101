def prompt(message)
  puts "=> #{message}"
end

def display_welcome
  prompt('Welcome to the mortgage / auto loan calculator!')
  prompt('-----------------------------------------------')
end

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def valid_number?(input)
  ((input.to_i >=0) && (integer?(input) || float?(input)))
end

def clear
  system('clear') || system('cls')
end

def loan_amount_input
  loop do
    prompt('Please enter your loan amount:')
    loan_amount = gets.chomp
    return loan_amount if valid_number?(loan_amount)
    prompt('Please enter a valid loan amount.')
  end
end

def interest_rate_input
  loop do
    prompt("What is the APR? (5 for 5%)")
    interest_rate = gets.chomp
    return interest_rate if valid_number?(interest_rate)
    prompt("APR is incorrect. Please try again.")
  end
end

def loan_duration_input
  loop do
    prompt("What is duration of the loan (in years)?")
    duration_in_years = gets.chomp
    if duration_in_years.to_i >= 0 && integer?(duration_in_years)
      return duration_in_years
    else
      prompt("Loan duration invalid. Please try again.")
    end
  end
end

def payment_retrieval(loan_amount, monthly_interest, duration)
  if monthly_interest == 0.0
    loan_amount.to_f / duration.to_i
  else
    loan_amount.to_f() *
      (monthly_interest /
      (1 - (1 + monthly_interest)**(-duration)))
  end
end

def display_monthly_payment(monthly_payment, interest_rate, duration)
  prompt("Your monthly payment is #{format('%.2f', monthly_payment)}
  with an interest rate of #{interest_rate} % at #{duration} months.")
end

def another_calculation?
  choice = ''
  loop do
    prompt("Would you like to do another calculation? (Y or N)")
    choice = gets.chomp.downcase
    break if validate_new_calculation(choice)
    prompt("Wrong input. Please try again")
  end

  choice == 'y'
end

def validate_new_calculation(answer)
  answer == 'y' || answer == 'n'
end

def display_goodbye
  prompt("Thank you for using Mortgage Calculator!")
  prompt("Goodbye!")
end

display_welcome

loop do
  loan_amount = loan_amount_input

  clear

  interest_rate = interest_rate_input

  clear

  duration_in_years = loan_duration_input

  clear

  annual_rate = interest_rate.to_f / 100
  monthly_interest = annual_rate / 12
  duration = duration_in_years.to_i * 12

  monthly_payment = payment_retrieval(loan_amount, monthly_interest, duration)

  display_monthly_payment(monthly_payment, interest_rate, duration)

  break unless another_calculation?
end

clear

display_goodbye
