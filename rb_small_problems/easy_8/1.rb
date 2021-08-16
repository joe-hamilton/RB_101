# Sum of Sums

=begin
(Understand the Problem)
  Problem:
    Write a method that takes an Array of numbers and then returns the sum of the sums of each leading subsequence for that Array

  Inputs: Array of numbers
  Outputs: Integer (sum of the sums of each leading subsequence for the input Array)
  Questions:
    1.
  Explicit Rules:
    1. You may assume that the Array always contains at least one number
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes an Array of numbers as the argument, and returns an Integer
    - The output Integer should be the sum of the sums of each leading subsequence for the input Array

(Examples/Test Cases)
  sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
  sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
  sum_of_sums([4]) == 4
  sum_of_sums([1, 2, 3, 4, 5]) == 35

(Data Structure)
  Integer

(Algorithm)
    - Define method 'sum_of_sums' with one Array parameter
      - Initialize local variable 'total' and assign it to 0
      - From 1 up to the size of the array, slice off the portion of the input Array from index 0 with a length that is represented by the current number in the iteration
      - Take the sliced array and multiply all numbers together. Save the return value in 'total' on each iteration

(Code)
=end

def sum_of_sums(array)
  total = 0

  1.upto(array.size) do |num|
    total += array.slice(0, num).reduce(:+)
  end
  total
end

p sum_of_sums([3, 5, 2]) #== (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) #== (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) #== 4
p sum_of_sums([1, 2, 3, 4, 5]) #== 35