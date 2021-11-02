# Sequence Count

=begin
(Understand the Problem)
  Problem:
    Create a method that takes two integers as arguments. The first argument is a count, and the second is the first number
    of a sequence that your method will create. The method should return an Array that contains the same number of elements
    as the count argument, while the values of each element will be multiples of the starting number.

  Inputs: Two Integers (one is the count, the other is the first number of a sequence)
  Outputs: Array of Integers (Multiples of second method argument up to the first method argument)
  Questions:
    1.
  Explicit Rules:
    1. You may assume that the count argument will always have a value of 0 or greater,
       while the starting number can be any integer value. If the count is 0, an empty list should be returned.
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes two integers; the first being the count, and the second being the first number of the sequence that the method will create
    - The method should return an Array containing the same number of elements as the count argument, while the values of each element in the Array will
      be multiples of the starting number argument

(Examples/Test Cases)
  sequence(5, 1) == [1, 2, 3, 4, 5]
  sequence(4, -7) == [-7, -14, -21, -28]
  sequence(3, 0) == [0, 0, 0]
  sequence(0, 1000000) == []

(Data Structure)
  Array

(Algorithm)
    - Define method 'sequence' with two parameters, 'count' and 'starting_number'
      - Inititalize local variable 'multiples' and assign it to an empty array
      - From 1 up to the 'count' argument, multiply the current number in the iteration with 'starting_number'
        - Make sure to place the product into the 'multiples' array
      - Return the 'multiples' array

(Code)
=end

def sequence(count, starting_number)
  multiples = []

  1.upto(count) { |num| multiples << starting_number * num}
  multiples
end


p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []