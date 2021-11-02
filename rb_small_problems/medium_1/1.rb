# Rotation (Part 1)

=begin
(Understand the Problem)
  Problem:
    Write a method that rotates an array by moving the first element to the end of the array.

  Inputs: Array
  Outputs: New Array (first element moved to the end of the input Array)
  Questions:
    1.
  Explicit Rules:
    1. The original array should not be modified.
    2. Do not use the method Array#rotate or Array#rotate! for your implementation.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes an Array and outputs a new Array containing the same elements, but with the first element rotated to the end.
    -

(Examples/Test Cases)
  rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
  rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
  rotate_array(['a']) == ['a']

  x = [1, 2, 3, 4]
  rotate_array(x) == [2, 3, 4, 1]   # => true
  x == [1, 2, 3, 4]                 # => true

(Data Structure)
    Array

(Algorithm)
    - Define method 'rotate_array' with one parameter 'array'
      - Initialize local variable 'first_element' and assign it to the first index in the input Array
      - Initialize local variable 'rotated_array' and assign it to an empty Array
      - Take the second thru the last element and append it in 'rotated_array'
      - Append 'first_element' to 'rotated_array'
      - Since the first portion of the new Array is a sub-array, you will need to combine the sub-array and 'first_element' into one array

(Code)
=end

def rotate_array(array)
  rotated_array = []
  first_element = array[0]

  rotated_array << array[1..-1] << first_element
  rotated_array.flatten
end

# Alternate Solution

# def rotate_array(arr)
#   arr[1..-1] << arr[0]
# end


p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true