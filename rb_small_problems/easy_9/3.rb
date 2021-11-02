# Always Return Negative

=begin
(Understand the Problem)
  Problem:
    Write a method that takes a number as an argument. If the argument is a positive number, return the negative of that number. If the number is 0 or negative, return the original number

  Inputs: Integer
  Outputs: Integer
  Questions:
    1. How do we handle empty inputs?
  Explicit Rules:
    1. If the input Integer is 0 or negative, return the input Integer
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes an Integer as an argument
    - If the argument is positive, the method should return the negative of that number
    - If the argument is 0 or negative, the method should return the input Integer

(Examples/Test Cases)
  negative(5) == -5
  negative(-3) == -3
  negative(0) == 0      # There's no such thing as -0 in ruby

(Data Structure)
    Integer

(Algorithm)
    - Define method `negative` with one parameter `int`
      - If `int` is greater than 0, return the negative of `int`
      - If `int` is less than or equal to 0, return `int`

(Code)
=end

def negative(int)
  return -int if int > 0
  return int if int <= 0
end

# Alternate Solution

# def negative(int)
#   int > 0 ? -int : int
# end

# Alternate Solution

# def negative(int)
#   -int.abs
# end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby