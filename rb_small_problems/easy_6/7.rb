# Halvsies

=begin
(Understand the Problem)
  Problem:
    Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays)
    that contain the first half and second half of the original Array, respectively

  Inputs: Array (Integers)
  Outputs: Nested Array (2 sub arrays of Integers)
  Questions:
    1.
  Explicit Rules:
    1. If the original array contains an odd number of elements, the middle element should
       be placed in the first half Array.
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes an Array of Integers as an argument, and returns two sub - Arrays
      that are a part of an Array with the first half and second half of the original Array, respectively
    -

(Examples/Test Cases)
  halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
  halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
  halvsies([5]) == [[5], []]
  halvsies([]) == [[], []]

(Data Structure)
  Nested Array

(Algorithm)
    - Define method `halvsies` with one Array paramater `num_arr`
      - Initialize local variable `nested_num_arr` to an empty Array
      - Divide the size of `num_arr` by 2.0 and round to the smallest number that is greater than
        or equal to the return value. Assign return value to `center`
      - The 1st Array in `nested_num_arr` should be the elements from (index 0 to `center` - 1)
      - The 2nd Array in `nested_num_arr` should be the elements from (`center` to last index)

(Code)
=end

def halvsies(num_arr)
  nested_num_arr = []
  center = (num_arr.size / 2.0).ceil

  nested_num_arr << num_arr[0..center - 1] << num_arr[center..-1]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]