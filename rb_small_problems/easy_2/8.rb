# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

def integer?(input)
  input.to_i.to_s == input
end

def float?(input)
  /\d/.match(input) && /^\d*\.?\d*$/.match(input)
end

def valid_number?(input)
  ((input.to_i > 0) && (integer?(input) || float?(input)))
end

def find_integer
  integer = ''
  loop do
    puts "Please enter an integer greater than 0: "
    integer = gets.chomp

    break if valid_number?(integer)
    puts "Incorrect input. Please try again."
  end
  integer.to_i
end

def compute_sum(number)
  total = 0
  1.upto(number) {|num| total += num}
  total
end

def compute_product(number)
  total = 1
  1.upto(number) {|num| total *= num}
  total
end

def sum_or_product?
  choice = ''
  loop do
    puts "Enter 's' to compute the sum, 'p' to compute the product."
    choice = gets.chomp

    break if choice == 's' || choice == 'p'
    puts "Incorrect input. Please try again."
  end
  choice
end

integer = find_integer
choice = sum_or_product?

if choice == 's'
  sum = compute_sum(integer)
  puts "The sum of the integers between 1 and #{integer} is #{sum}."
else
  product = compute_product(integer)
  puts "The product of the integers between 1 and #{integer} is #{product}."
end

=begin
if choice == 's'
  sum = (1..number).reduce {|sum, num| sum + num}
   puts "The sum of the integers between 1 and #{number} is #{sum}."
 else
  product = (1..number).reduce {|product, num| product * num}
   puts "The product of the integers between 1 and #{number} is #{product}."
 end
=end


=begin
integer = 0

loop do
  puts "Please enter an integer greater than 0: "
  integer = gets.chomp

  break if valid_number?(integer)
  puts "Sorry, please enter a valid integer greater than 0."
end

puts "Enter 's' to compute sum, 'p' to compute product."
choice = gets.chomp

if choice == 's'
  puts (1..integer.to_i).reduce(:+)
else
  puts (1..integer.to_i).reduce(:*)
end
=end