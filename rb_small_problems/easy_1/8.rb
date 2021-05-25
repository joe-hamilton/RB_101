=begin
(Problem):
Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array.
The array will never be empty and the numbers will always be positive integers. Your result should also be an integer.


(Understand the Problem):
  •	(Inputs): Array containing integers

  •	(Outputs): Integer

  •	(Rules):
    o	(Explicit):
      - The array will never be empty
      - Numbers will always be positive numbers


    o	(Implicit):

  •	(Questions):

  •	(Mental Model): Given an array of integers, add up all integers in array and divide by the size of array to find the average of all numbers

(Examples / Test Cases):

puts average([1, 6]) == 3 # integer division: (1 + 6) / 2 -> 3
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40


(Data Structure): Integer

(Algorithm):
  - Create `sum` variable that holds a value of 0
  - Iterate through array
    - For each iteration, add the element to sum and store new value in sum
    - Once iteration is done, divide sum by the size of array

=end

# (Code)

def average(arr)
  averages = (arr.reduce(:+)) / (arr.size)
end

# Further Exploration
# def average(arr)
#  averages = (arr.reduce(:+)) / (arr.size)
#  averages.to_f
# end

p average([1, 6]) #== 3 # integer division: (1 + 6) / 2 -> 3
p average([1, 5, 87, 45, 8, 8]) #== 25
p average([9, 47, 23, 95, 16, 52]) #== 40