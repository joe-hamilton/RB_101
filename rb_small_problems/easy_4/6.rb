=begin
(Understand the Problem)
  Problem:
    Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

  Inputs: array of numbers
  Outputs: array of numbers
  Questions:
    1.
  Explicit Rules:
    1. output array will contain the same number of elements
    2. each element should be the running total from original array
  Implicit Rules:
    1.
    2.
  Mental Model:
    - write a method that takes an array of numbers
    - return an array with the same number of elements, but consists of the running total of each element from original array

(Examples/Test Cases)
    running_total([2, 5, 13]) == [2, 7, 20]
    running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
    running_total([3]) == [3]
    running_total([]) == []

(Data Structure)
    array(consisting of numbers)

(Algorithm)
    - create a method that takes an array of numbers
    - within the array, create a 'total' variable that contains 0
    - using the `map` method, iterate through array and add total to each number to populate new array

(Code)
=end

def running_total(array)
  total = 0

  new_array = array.map do |num|
    total += num
  end
  new_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []