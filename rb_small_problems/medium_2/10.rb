# Sum Square - Square Sum

=begin
(Understand the Problem)
  Problem:
    Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

  Inputs: Integer
  Outputs: Integer
  Questions:
    1. How do we handle numbers greater than or equal to 0?
    2. Should we raise an error message if the input is empty?
  Explicit Rules:
    1. The minuend is the square of the sum of the first `n` positive integers (Ex: (1 + 2 + 3)**2)
    2. The subtrahend is the sum of the squares of the first `n` positive integers (Ex: (1**2 + 2**2 + 3**2))
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes an Integer as an argument and returns the difference between...
        - the square of the sum of the first `n` positive integers (Ex: (1 + 2 + 3)**2)
        - the sum of the squares of the first `n` positive integers (Ex: (1**2 + 2**2 + 3**2))

(Examples/Test Cases)
  sum_square_difference(3) == 22
    # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
  sum_square_difference(10) == 2640
  sum_square_difference(1) == 0
  sum_square_difference(100) == 25164150

(Data Structure)
    Integer

(Algorithm)
    - Create method `minuend` to find the first portion of the calculation
        - Given the input Integer, create an Array of Integers from 1 up to input Integer
        - Add the elements in the Array together and square the sum
    - Create method `subtrahend` to find the second portion of the calculation
        - Given input Integer, create an Array of Integers from 1 up to input Integer
        - Add the elements in the Array together after you have squared each element
    - Create method `sum_square_difference` with one parameter `num`
        - Subtract `minuend` and `subtrahend` to find the difference

(Code)
=end

def minuend(num)
  num_arr = []

  1.upto(num) { |n| num_arr << n }
  (num_arr.reduce(:+)) ** 2
end

def subtrahend(num)
  num_arr = []

  1.upto(num) { |n| num_arr << n ** 2}
  num_arr.reduce(:+)
end

def sum_square_difference(num)
  minuend(num) - subtrahend(num)
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150