# Rotation Part 3

=begin
(Understand the Problem)
  Problem:
    Write a method that takes an integer as argument, and returns the maximum rotation of that argument

  Inputs: Integer
  Outputs: Integer
  Questions:
    1. What is the maximum rotation of a number?
  Explicit Rules:
    1. You can (and probably should) use the rotate_rightmost_digits method
    2. Note that you do not have to handle multiple 0s
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes an Integer as an argument and returns an integer reflecting the maximum rotations of that argument
    -

(Examples/Test Cases)
  max_rotation(735291) == 321579
  max_rotation(3) == 3
  max_rotation(35) == 53
  max_rotation(105) == 15 # the leading zero gets dropped
  max_rotation(8_703_529_146) == 7_321_609_845

(Data Structure)
    Integer

(Algorithm)
    - Use method `rotate_array`
    - Use method `rotate_rightmost_array`
    - Define method `max_rotation` with one parameter `int`
        -

(Code)
=end

def rotate_array(arr, n)
  new_arr = arr.clone
  sliced_element = new_arr.slice!(n)
  new_arr << sliced_element
end

def rotate_rightmost_digits(int, n)
  int_arr = int.to_s.chars
  rotate_array(int_arr, n).join('').to_i
end

def max_rotation(int)
  n = 0
  rotations = rotate_rightmost_digits(int, n)
  loop do
    rotations = rotations
    n += 1
    break if n == 3
  end
  rotations
end

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
max_rotation(105) #== 15 # the leading zero gets dropped
max_rotation(8_703_529_146) #== 7_321_609_845