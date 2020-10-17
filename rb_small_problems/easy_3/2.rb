=begin
(Problem):
Write a program that prompts the user for two positive integers, and then prints the results of the following operations on those two numbers:
addition, subtraction, product, quotient, remainder, and power. Do not worry about validating the input.


(Understand the Problem):
•	(Inputs): Two Positive integers from user


•	(Outputs): Integer (result of addition, subtraction, product, quotient, remainder, power on two integers from user)


•	(Questions):



•	(Rules):
  o	(Explicit):
    - Prompt the user for two positive integers
    - Print results of the following operations
    - Do not validate input


  o	(Implicit):


•	(Ideas):

(Examples / Test Cases):

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103


(Data Structure): Integer

(Algorithm):
  - Ask user for 1st integer
  - Ask user for 2nd integer
  - Use both integers as operands to the following operations:
    - Addition
    - Subtraction
    - Multiplication
    - Division
    - Remainder
    - Power

(Code)

=end


def prompt(message)
  puts "==> #{message}"
end

prompt("Enter the first number: ")
number_1 = gets.chomp.to_i

prompt("Enter the second number: ")
number_2 = gets.chomp.to_i


sum = number_1 + number_2
difference = number_1 - number_2
product = number_1 * number_2
quotient = number_1.to_f / number_2.to_f
remainder = number_1 % number_2
power = number_1 ** number_2

prompt("#{number_1} + #{number_2} = #{sum}")
prompt("#{number_1} - #{number_2} = #{difference}")
prompt("#{number_1} * #{number_2} = #{product}")
prompt("#{number_1} / #{number_2} = #{quotient}")
prompt("#{number_1} % #{number_2} = #{remainder}")
prompt("#{number_1} ** #{number_2} = #{power}")