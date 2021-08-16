# Multiply Lists

=begin
(Understand the Problem)
  Problem:
    Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a
    new Array that contains the product of each pair of numbers from the arguments that have the same index.

  Inputs: 2 Arrays of integers
  Outputs: A new Array of integers (The product of the integers located at the same index in both input Arrays)
  Questions:
    1. Does the output create a new Array or mutate the original?
    2. Do we assume that all numbers are greater than 0?
    3. Do we validate the input to make sure all the numbers are valid?
    4. The output Array will contain the same number of elements as either input Array's length?
  Explicit Rules:
    1. You may assume that the arguments contain the same number of elements.
    2.
  Implicit Rules:
    1. The output Array will be a new Array. The original Array object should stay the same
    2.
  Mental Model:
    - Write a method that takes two Array of numbers as arguments
    - The method should return a new Array containing the product of each pair of numbers from the input Arrays that have the same index

(Examples/Test Cases)
  multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

(Data Structure)
    A new Array containing a list of integers

(Algorithm)
    - Define method 'multiply_list' with two Array parameters
      - Initialize local variable 'index' and assign it to 0
      - Initialize local variable 'product_array' and assign it to an empty Array
      - Create loop that multiplies the numbers located at the same index of both arrays and append it to the 'product_array' array
      - Increment the 'index' method by 1 on each iteration
      - Break out of the loop once index reaches the length of any of the input Arrays
    - Return the 'product_array' Array

(Code)
=end

def multiply_list(array1, array2)
  index = 0
  product_array = []

  loop do
    product_array << array1[index] * array2[index]
    index += 1
    break if index == array1.length
  end
  product_array
end

# Alternate Solution
# def multiply_list(array1, array2)
#   product_array = []

#   array1.each_with_index do |num, index|
#     product_array << num * array2[index]
#   end
#   product_array
# end

# Alternate Solution
# def multiply_list(array1, array2)
#   array3 = []

#   array1.zip(array2) { |x, y| array3 << x * y }
#   array3

# end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]