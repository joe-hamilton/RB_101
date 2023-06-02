# Triangle Sides

def valid_triangle?(num1, num2, num3)
  sorted_arr = [num1, num2, num3].sort
  sorted_arr[0, 2].reduce(:+) > sorted_arr[-1] 
end

def triangle(num1, num2, num3)
  sorted_arr = [num1, num2, num3].sort

  return :invalid if !valid_triangle?(num1, num2, num3)
  if valid_triangle?(num1, num2, num3) && sorted_arr.all? { |num| num == sorted_arr[0]}
    :equilateral
  elsif valid_triangle?(num1, num2, num3) && (num1 == num2 || num1 == num3)
    :isosceles
  elsif valid_triangle?(num1, num2, num3) && sorted_arr.each { |num| num != sorted_arr[0]}
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid