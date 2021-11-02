# Next featured Number Higher than a Given Value

=begin
(Understand the Problem)
  Problem:
    Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument.

  Inputs: Integer
  Outputs: Integer (next featured number)
  Questions:
    1. What is a featured number?
    2. How do we handle negative numbers?
  Explicit Rules:
    1. Return an error message if there is no next featured number.
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes a single integer as an argument, and returns the next featured number that is greater than the argument
    -

(Examples/Test Cases)
  featured(12) == 21
  featured(20) == 21
  featured(21) == 35
  featured(997) == 1029
  featured(1029) == 1043
  featured(999_999) == 1_023_547
  featured(999_999_987) == 1_023_456_987

  featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

(Data Structure)
    Integer or String (error message)

(Algorithm)
    - Create an error message that will be printed out if there are no featured numbers greater than `int`
    - Define method `featured` with one parameter `int`
      - Initialize `num` and assign it to `int` + 1
      - Create a loop
        - Return `num` if all requirements are met
        - Break the loop if `num` is greater than 9_876_543_210
        - Outside of the loop, return `ERROR_MSG`
    - Define method `is_odd?` with one parameter `int`
      - Determine if `int` is an odd number
    - Define method `multiple_of_7` with one parameter `int`
      - Determine if `int` % 7 is equal to 0
    - Define `count_only_1` with one parameter `int`
      - Turn `int` into a String, split it up and assign it to initialized local variable `num_str`
      - Determine if `num_str` not containing any duplicates is equal to the original `num_str` Array

(Code)
=end

ERROR_MSG = "There is no possible number that fulfills those requirement."

def is_odd?(int)
  int.odd?
end

def multiple_of_7?(int)
  int % 7 == 0
end

def count_only_1?(int)
  num_str = int.to_s.split('')

  num_str.uniq == num_str
end

def featured(int)
  num = int + 1

  loop do
    return num if is_odd?(num) && multiple_of_7?(num) && count_only_1?(num)
    num += 1
    break if num >= 9_876_543_210
  end
  ERROR_MSG
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)