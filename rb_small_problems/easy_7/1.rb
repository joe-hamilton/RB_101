# Combine Two Lists

=begin
(Understand the Problem)
  Problem:
    Write a method that combines two Arrays passed in as arguments, and returns a new Array
    that contains all elements from both Array arguments, with the elements taken in alternation.

  Inputs: 2 Arrays
  Outputs: Array
  Questions:
    1.
  Explicit Rules:
    1. The output Array should be a new Array
    2. You may assume that both input Arrays are non-empty, and that they have the same number of elements.

  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes in two Arrays as arguments, combines them, and returns a new Array containing all elements from both arrays
    - The elements should be taken in alternation

(Examples/Test Cases)
  interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

(Data Structure)
    Array

(Algorithm)
    - Define method 'interleave' with two parameters, 'array_1' and 'array_2'
      - Initialize 'alternating_array' and assign it to an empty Array
      - Initialize 'index' and assign it to 0
      - Create loop...
        - On each iteration, add the element of the current index from both arrays to the 'alternating_array'
        - Increase the index number by 1 on each iteration
        - Break when 'index' is equal to the size of 'array_1' and 'array_2'
      - Return 'alternating_array'
(Code)
=end

# def interleave(array_1, array_2)
#   alternating_array = []
#   index = 0

#   loop do
#     alternating_array << array_1[index]
#     alternating_array << array_2[index]
#     index += 1
#     break if index == array_1.size
#   end
#   alternating_array
# end

# Alternate Solution
def interleave(array1, array2)
  array1.zip(array2).flatten
end


p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']