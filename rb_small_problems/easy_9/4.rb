# Counting Up

=begin
(Understand the Problem)
  Problem:
    Write a method that takes an integer argument, and returns an Array of all integers, in sequence, between 1 and the argument

  Inputs: Integer
  Outputs: Array (containing integers in sequence, between 1 and the input Integer)
  Questions:
    1.
  Explicit Rules:
    1. You may assume that the argument will always be a valid integer that is greater than 0
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes one Integer argument
    - The method should return an Array containing all integers in sequence, between 1 and the input Integer

(Examples/Test Cases)
  sequence(5) == [1, 2, 3, 4, 5]
  sequence(3) == [1, 2, 3]
  sequence(1) == [1]

(Data Structure)
    Array

(Algorithm)
    - Define method `sequence` with one parameter `int`
      - Create a new Array `num_arr` and add each integer between 1 and `int`to it
      - Return Array

(Code)
=end

def sequence(int)
  num_array = []

  return "Not a valid number" if int <= 0

  1.upto(int) { |num| num_array << num}
  num_array
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(0)