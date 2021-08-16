# Multiply All Pairs

=begin
(Understand the Problem)
  Problem:
    Write a method that takes two Array arguments in which each Array contains a list of numbers,
    and returns a new Array that contains the product of every pair of numbers that can be formed
    between the elements of the two Arrays. The results should be sorted by increasing value.

  Inputs: Array containing a list of numbers
  Outputs: A new Array containing the product of every pair of numbers that can be formed between the elements of the 2 Arrays
  Questions:
    1. Should we assume that every number is greater than 0?
  Explicit Rules:
    1. The results should be sorted by increasing value
    2. You may assume that neither argument is an empty Array
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes two Arrays containing a list of numbers as arguments
    - The method should return a new Array containing the product of every pair of numbers that can be formed between the elements of the two Array arguments
    - Sort the new Array by increasing value

(Examples/Test Cases)
  multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

(Data Structure)
    A new Array

(Algorithm)
    - Define method 'multiply_all_pairs' with two Array parameters 'array1' and 'array2'
      - Initialize local variable 'array3' and assign it to an empty Array
      -

(Code)
=end

def multiply_all_pairs(array1, array2)
  array3 = []
  index = 0
  smallest_array = array1.size > array2.size ? array2[index] : array1[index]

  if array1[0] == smallest_array
    loop do
      array2.each { |num| array3 << num * array1[index] }
      index += 1
      break if index == array1.size
    end
  else
    loop do
      array1.each { |num| array3 << num * array2[index] }
      index += 1
      break if index == array2.size
    end
  end
  array3.sort
end

# Alternate Solution
# def multiply_all_pairs(array1, array2)
#   array1.product(array2).map { |sub_array| sub_array.reduce(:*)}.sort
# end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
p multiply_all_pairs([4, 3, 1, 2], [2, 4])