# Rotation Part 2

=begin
(Understand the Problem)
  Problem:
    Write a method that can rotate the last n digits of a number

  Inputs: Integer
  Outputs: Integer
  Questions:
    1.
  Explicit Rules:
    1. Note that rotating just 1 digit results in the original number being returned
    2. You may assume that n is always a positive integer
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes an Integer as an argument and returns the number with the last `n` digits rotated
    - `n` represents the digit that must be rotated...counting from the right

(Examples/Test Cases)
  rotate_rightmost_digits(735291, 1) == 735291
  rotate_rightmost_digits(735291, 2) == 735219
  rotate_rightmost_digits(735291, 3) == 735912
  rotate_rightmost_digits(735291, 4) == 732915
  rotate_rightmost_digits(735291, 5) == 752913
  rotate_rightmost_digits(735291, 6) == 352917

(Data Structure)
    Integer

(Algorithm)
    - Use method `rotate_array` but with additional parameter `n`
      - `n` will be the digit that needs to be sliced from `new_arr`
    - Define method `rotate_rightmost_digits` with two parameters `int` and `n`
      - Turn `int` into a String then split into an Array and assign return value to `int_arr`
      - Call `rotate_array` and pass in `int_arr` and `-n`
      - Join the Array together and turn into Integer

(Code)
=end



def rotate_array(arr, n)
  new_arr = arr.clone
  sliced_element = new_arr.slice!(n)
  new_arr << sliced_element
end

def rotate_rightmost_digits(int, n)
  int_arr = int.to_s.chars
  rotate_array(int_arr, -n).join('').to_i
end

# Alternate Solution

# def rotate_rightmost_digits(number, digits)
#   number_array = number.to_s.chars
#   digit_to_rotate = number_array.slice!(-digits)

#   (number_array << digit_to_rotate).join.to_i
# end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917



