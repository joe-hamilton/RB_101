=begin
(Problem):
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

(Understand the Problem):
  •	(Inputs): Positive integer

  •	(Outputs): Sum of digits

  •	(Rules):
    o	(Explicit): Integer will be positive


    o	(Implicit):

  •	(Questions):

  •	(Mental Model): Given an integer, iterate through each digit and find the sum

(Examples / Test Cases):

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45


(Data Structure): Integer

(Algorithm):
  - Turn integer into a string
  - Turn integer into individual characters
  - Create a new array that turns the characters back into integers
  - Add each element up to find the sum
=end

# (Code)

def sum(integer)
  integer.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45