=begin
(Understand the Problem)
  Problem:
    Write a method that takes a positive integer or zero, and converts it to a string representation.

  Inputs: integer
  Outputs: string of integers
  Questions:
    1.
  Explicit Rules:
    1. you may not use any of the standard conversion methods
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - write a method that takes a positive integer or 0, and converts it to a string representation
    -

(Examples/Test Cases)
    integer_to_string(4321) == '4321'
    integer_to_string(0) == '0'
    integer_to_string(5000) == '5000'

(Data Structure)
    string

(Algorithm)
    - create a hash that uses integers as keys and corresponding string as values
    - create a method that takes one integer argument
    - inside method, turn method argument into an array and iterate through, while creating a new array
    - the new array should contain the return value of looking up the string representation of each integer element

(Code)
=end

INTEGER_TO_STRING = {
0 => '0', 1 => '1', 2 => '2', 3 => '3', 4 => '4',
5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9'
}

def integer_to_string(integer)
  string_equiv = integer.digits.reverse.map do |ele|
    INTEGER_TO_STRING[ele]
  end
  string_equiv.join
end

# Alternate solution
=begin
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result
end
=end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'