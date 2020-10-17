=begin
(Problem):
Write a program that solicits 6 numbers from the user, then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.

(Understand the Problem):
•	(Inputs):
    - 6 numbers from user
      - 5 numbers made into an array, 6th number used to determine if it is included in array

•	(Outputs): Message that says if the 6th number is included in array of 5 numbers

•	(Questions):

•	(Rules):
  o	(Explicit):
    Get six numbers from user
    Print a message that describes whether or not the 6th number appears amongst the first 5 numbers.

  o	(Implicit):

•	(Ideas):

(Examples / Test Cases):

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].


(Data Structure):
  - Array of numbers
    - First 5 numbers will be included in array.  Sixth number is requested to determine if number is included in array

(Code)
  - Ask the user for a number
  - Repeat step one 5 more times
    - Make sure the numbers are valid
  - Store all enter numbers into an array
  - Iterate through array and determine if the last number appears in the first 5 numbers
  - Display message that lets human know if number does or does not appear in array
=end


def clear
  system('clear') || system('cls')
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

def get_numbers
  numbers_array = []
  loop do
    puts "Enter the 1st number: "
    number1 = gets.chomp
    numbers_array << number1.to_i if valid_number?(number1)

    clear

    puts "Enter 2nd number: "
    number2 = gets.chomp
    numbers_array << number2.to_i if valid_number?(number2)

    clear

    puts "Enter 3rd number: "
    number3 = gets.chomp
    numbers_array << number3.to_i if valid_number?(number3)

    clear

    puts "Enter 4th number: "
    number4 = gets.chomp
    numbers_array << number4.to_i if valid_number?(number4)

    clear

    puts "Enter 5th number: "
    number5 = gets.chomp
    numbers_array << number5.to_i if valid_number?(number5)

    clear

    break if numbers_array.size == 5
    puts "There seems to be an incorrect value somewhere. Please enter six integers."
  end
  numbers_array
end

new_array = get_numbers

puts "Enter the last number: "
number6 = gets.chomp.to_i

if new_array.include?(number6)
  puts "The number #{number6} appears in #{new_array}."
else
  puts "The nummber #{number6} does not appear in #{new_array}."
end
