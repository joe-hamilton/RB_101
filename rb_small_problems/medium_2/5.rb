# Triangle Sides

=begin
(Understand the Problem)
  Problem:
    Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol
    :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene,
    or invalid.
  Inputs: Three Integers
  Outputs: Symbol (:isosceles, :equilateral, :scalene, or :invalid)
  Questions:
    1. How do we handle negative Integers?
  Explicit Rules:
    1. To be a valid triangle, the sum of the lengths of the two shortest sides must be
       greater than the length of the longest side, and all sides must have lengths greater than 0
    2. A triangle is classified as follows:
        - equilateral All 3 sides are of equal length
        - isosceles 2 sides are of equal length, while the 3rd is different
        - scalene All 3 sides are of different length
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes three Integers as arguments
    - The three Integers represent the sides of a triangle
    - First determine if the triangle is valid, and once that is done, return either :isosceles, :scalene, :equilateral,
      or :invalid

(Examples/Test Cases)
  triangle(3, 3, 3) == :equilateral
  triangle(3, 3, 1.5) == :isosceles
  triangle(3, 4, 5) == :scalene
  triangle(0, 3, 3) == :invalid
  triangle(3, 1, 1) == :invalid

(Data Structure)
    Symbol (:isosceles, :equilateral, :scalene, or :invalid)

(Algorithm)
    - First determine whether the triangle is valid
      - Find the sum of the two shortest sides
      - If the sum is greater than the longest side, then it is valid
    - Define method `triangle` with three arguments `side1`, `side2`, and `side3`
      - If all three sides are equal...:equilateral
      - If 2 sides are equal...:iscosceles
      - If all 3 sides are different...:scalene
      - Otherwise return :invalid

(Code)
=end

def valid_triangle?(side1, side2, side3)
  sorted_sides = [side1, side2, side3].sort

  return true if sorted_sides[0, 2].reduce(:+) > sorted_sides[-1]
  false
end

def triangle(side1, side2, side3)
  sides = [side1, side2, side3]

  return :invalid if sides.any?(0)
  if valid_triangle?(side1, side2, side3) && sides.all?(side1)
    :equilateral
  elsif valid_triangle?(side1, side2, side3) && (side1 == side2 || side1 == side3 || side2 == side3)
    :isosceles
  elsif valid_triangle?(side1, side2, side3) && (side1 != side2 && side1 != side3 && side2 != side3)
    :scalene
  else
    :invalid
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid