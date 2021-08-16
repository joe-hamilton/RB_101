# Right Triangles

=begin
(Understand the Problem)
  Problem:
    Write a method that takes a positive integer, n, as an argument, and displays a right triangle whose sides each have n stars

  Inputs: Positive integer
  Outputs: A right triangle (made up of strings of asterisks)
  Questions:
    1.
  Explicit Rules:
    1. The hypotenuse of the triangle should have one end at the lower-left of the triangle, and the other end at the upper-right.
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes a positive integer 'n' and displays a right triangle whose sides each have 'n' stars
    -

(Examples/Test Cases)
   triangle(5)

       *
      **
     ***
    ****
   *****

(Data Structure)
    String (creating a right triangle made up of asterisks)

(Algorithm)
    - Define method 'triangle' with one parameter 'n'
      - Inside method, initialize local variable 'count' and assign it to 1
      - Create loop...
         - Inside loop, determine the number of spaces to print for that iteration by multiplying ' ' and (count) then adding '*' multiplied by 'count'

(Code)
=end

def triangle(n)
  count = 1
  loop do
     p (' ' * (n - count)) + ('*' * count)
     count += 1
     break if count > n
  end
end

# Alternate Solution
# def triangle(n)
#    count = 1
#    n.times do |number|
#       p (' ' * (n - count)) + ('*' * count)
#       count += 1
#    end
# end

triangle(5)
triangle(9)