=begin
(Understand the Problem)
  Problem:
    Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation

  Inputs: Arrays
  Outputs: New Array
  Questions:
    1.
  Explicit Rules:
    1. You may assume that both input Arrays are non-empty, and that they have the same number of elements
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes two Arrays as arguments
    - The method should return a new Array that contains all elements from both input Arrays
    - The elements from the input Array should be taken in alternation

(Examples/Test Cases)
  interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']

(Data Structure)
    Array

(Algorithm)
    - Define method `interleave` with two parameters `arr_1` and `arr_2`
      - Initialize variable `alternate_arr` assigned to an empty Array
      - Initialize variable `index` with a value of 0
      - Create a loop...
        - Within the loop, take the element from index 0 in `arr_1` and populate `alternate_arr`
        - Take the element from index 0 in `arr_2` and populate `alternate_arr`
        - Increase the index number by 1
        - Repeat above steps until `index` >= `arr_1`
      - Return `alternate_arr`
(Code)
=end

def interleave(arr_1, arr_2)
  alternate_arr = []
  index = 0

  loop do
    alternate_arr << arr_1[index] << arr_2[index]
    index += 1
    break if index >= arr_1.size
  end
  alternate_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']