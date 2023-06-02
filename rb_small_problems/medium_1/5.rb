# Diamonds!

=begin
(Understand the Problem)
  Problem: Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd integer that is supplied as an argument to the method
    
  Inputs: Integer 

  Outputs: String (4-pointed diamond) 

  Questions:
    1. 
    2. 

  Explicit Rules:
    1. You may assume that the argument will always be an odd integer 
    2. 

  Implicit Rules:
    1. 
    2. 

  Mental Model:
    - Write a method that takes an Integer and displays a 4-pointed diamond in a n x n grid, where n is a odd integer that is supplied by the input argument
    - 

(Examples/Test Cases)
  diamond(3)

   *
  ***
   *  

(Data Structure)
    - String (4-pointed diamond)

(Algorithm)
    - Define method `print_top` with one parameter `num`
        - From 1 to `num`, print out the number of `diamonds` padded with `num` if the current number is odd
    
    - Define method `print_bottom` with one parameter `num`
        - From `num` down to 1, print out the number of `diamonds` padded with `num` if the current number is odd

    - Define method `diamond` with one parameter `num`
        - Invoke `print_top` and pass in `num`
        - Invoke `print_bottom` and pass in `num`

(Code)
=end

def print_top(num)
  1.upto(num) { |n| puts ('*' * n).center(num) if n.odd?}
end

def print_bottom(num)
  num.downto(1) { |n| puts ('*' * n).center(num) if n.odd? && n != num}
end

def diamond(num)
  print_top(num)
  print_bottom(num)
end


diamond(1)
diamond(3)
diamond(9)