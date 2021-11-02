# Double Doubles

=begin
(Understand the Problem)
  Problem:
    Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is

  Inputs: Integer
  Outputs: Integer
  Questions:
    1. What is a double number?
    2. What if the number is 0?
    3. Do we also handle negative numbers?
    4. How do we handle empty inputs?
  Explicit Rules:
    1. A double number is a number with an even number of digits whose left-side digits are exactly the same as its right-side digits
    2. Underscores in numbers are used for clarity purposes
  Implicit Rules:
    1. Double numbers must have the same number of digits on the left side that it does the right
    2.
  Mental Model:
    - Write a method that takes an integer as an argument
    - The method should return 2 times the number provided, unless the input number is a double number
    - Double numbers should be returned as-is

(Examples/Test Cases)
  twice(37) == 74
  twice(44) == 44
  twice(334433) == 668866
  twice(444) == 888
  twice(107) == 214
  twice(103103) == 103103
  twice(3333) == 3333
  twice(7676) == 7676
  twice(123_456_789_123_456_789) == 123_456_789_123_456_789
  twice(5) == 10

(Data Structure)
    Integer

(Algorithm)
    - Define method `twice` with one parameter `int`
      - Initialize local variable `middle_point` to the value of dividing the size of `int` by 2
      - Initialize local variable `left_side` to the value of the numbers from 0 to `middle_point`
      - Initialize local variable `right_side` to the value of the numbers from `middle_point` to the end
      - If `left_side` is equal to `right_side` then return `int`, otherwise multiply `int` by 2 and return the product

(Code)
=end

def twice(int)
  middle_point = int.to_s.size / 2
  left_side = int.to_s[0, middle_point]
  right_side = int.to_s[middle_point..-1]

  return int if left_side == right_side
  return int * 2 if left_side != right_side
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10