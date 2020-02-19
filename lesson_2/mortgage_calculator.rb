def prompt(message)
  Kernel.puts("=> #{message}")
end

def integer?(input)
  input.to_i().to_s() == input
end

def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def valid_number?(input)
  ((input.to_i() >= 0) && (integer?(input) || float?(input)))
end

def clear
  system('clear') || system('cls')
end

def loan_amount_input
  prompt("Enter your loan amount: ")
  loop do
    loan_amount = Kernel.gets().chomp()
    return loan_amount if valid_number?(loan_amount)
    prompt("Please enter a valid loan amount")
  end
end

def interest_rate_input
  prompt("Please enter in APR (Ex: 5 for 5%):")
  loop do
    interest_rate = Kernel.gets().chomp()
    return interest_rate if valid_number?(interest_rate)
    prompt("Enter in a valid interest rate.")
  end
end

def loan_duration_input
  prompt("What is the duration of the loan, in years?")
  loop do
    duration_in_years = Kernel.gets().chomp()
    return duration_in_years if valid_number?(duration_in_years)
    prompt("Enter a valid length of time for loan.")
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

def another_calculation?
  answer = ''
  prompt("Would you like to do another calculation? (Y or N)")
  loop do
    answer = Kernel.gets().chomp().downcase()
    break if answer == 'y' || answer == 'n'
    prompt("Invalid input. Answer Y or N.")
  end
  answer == 'y'
end

clear

prompt("Welcome to the mortgage / auto loan calculator!")
prompt("-----------------------------------------------")

loop do
  loan_amount = loan_amount_input
  interest_rate = interest_rate_input
  duration_in_years = loan_duration_input

  clear

  annual_rate = interest_rate.to_f() / 100
  monthly_interest = annual_rate / 12
  duration = duration_in_years.to_i() * 12

  monthly_payment = payment_retrieval(loan_amount, monthly_interest, duration)

  prompt("Your monthly payment is $#{format('%02.2f', monthly_payment)}
  with an interest rate of #{interest_rate}% at #{duration} months")

  break unless another_calculation?
end

clear

prompt("Thank you for using Mortgage Calculator!")
prompt("Goodbye!")
