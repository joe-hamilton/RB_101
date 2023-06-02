# Rotation (Part 3)

=begin
(Understand the Problem)
  Problem: Write a method that takes an integer as argument, and returns the maximum rotation of that argument
    
  Inputs: Integer

  Outputs: Integer  

  Questions:
    1. 
    2. 

  Explicit Rules:
    1. Note that you do not have to handle multiple 0s  
    2. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

  Implicit Rules:
    1. 
    2. 

  Mental Model:
    - Write a method that takes an Integer and returns the maximum rotation of the input Integer
    - 

(Examples/Test Cases)
  max_rotation(735291) == 321579
  max_rotation(3) == 3
  max_rotation(35) == 53
  max_rotation(105) == 15 # the leading zero gets dropped
  max_rotation(8_703_529_146) == 7_321_609_845 

(Data Structure)
    - Integer

(Algorithm)
    - Create an empty Array and save to local variable `max_rotated_arr`  
    - Turn input Integer into an Array of Strings
    - Create loop that will do the following...
        - Swap first element in Array and place it at the end. Reassign return value to `int_arr`
        - Slice first element in `int_arr` and append to `max_rotated_arr`
        - Repeat steps above until `int_arr` is empty
    - Turn `max_rotated_arr` into an Integer

(Code)
=end

def max_rotation(int)
  max_rotated_arr = []
  int_arr = int.to_s.chars # ['7', '3', '5', '2', '9', '1']

  loop do
    int_arr = int_arr[1..-1] << int_arr[0]
    max_rotated_arr << int_arr.slice!(0) 
    break if int_arr.empty?
  end
  max_rotated_arr.join.to_i
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845