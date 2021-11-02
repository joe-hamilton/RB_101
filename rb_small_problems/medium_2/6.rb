# Tri-Angles

=begin
(Understand the Problem)
  Problem:
    Write a method that takes the 3 angles of a triangle as arguments, and returns a symbol
    :right, :acute, :obtuse, or :invalid depending on whether the triangle is a right, acute, obtuse, or invalid triangle

  Inputs: Three Integers
  Outputs: Symbol (:acute, :obtuse, :right, :invalid)
  Questions:
    1.
  Explicit Rules:
    1. To be a valid triangle, the sum of the angles must be exactly 180 degrees, and all angles must be greater than 0:
       if either of these conditions is not satisfied, the triangle is invalid
    2. You may assume integer valued angles so you don't have to worry about floating point errors.
       You may also assume that the arguments are specified in degrees
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes three Integers as arguments, where the Integers represent angles of a triangle
    - After determining whether it is a valid triangle, return :right, :acute, :obtuse, or :invalid

(Examples/Test Cases)
  triangle(60, 70, 50) == :acute
  triangle(30, 90, 60) == :right
  triangle(120, 50, 10) == :obtuse
  triangle(0, 90, 90) == :invalid
  triangle(50, 50, 50) == :invalid

(Data Structure)
    Symbol

(Algorithm)
    - Determine whether the triangle is valid
        - Add up all the angles and if they equal 180 and all the angles are greater than 0, then it is true, false otherwise
    - Define method `triangle` with 3 parameters: `angle1`, `angle2`, `angle3`
      - put all angles into an array and assign it to local variable `angles`
      - If a valid triangle and any angle is equal to 90, then :right
      - If a valid triangle and all three angles are less than 90, then :acute
      - If a valid triangle and any angle is greater than 90, then :obtuse
      - Otherwise :invalid

(Code)
=end

def valid_triangle?(angle1, angle2, angle3)
  sides = [angle1, angle2, angle3]

  return true if sides.reduce(:+) == 180 && sides.all? { | num| num > 0}
  false
end

def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]

  if valid_triangle?(angle1, angle2, angle3) && angles.any?(90)
    :right
  elsif valid_triangle?(angle1, angle2, angle3) && angles.all? { |num| num < 90}
    :acute
  elsif valid_triangle?(angle1, angle2, angle3) && angles.any? { |num| num > 90}
    :obtuse
  else
    :invalid
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid