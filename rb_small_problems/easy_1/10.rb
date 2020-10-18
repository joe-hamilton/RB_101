=begin
(Problem):
Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary.
If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.


(Understand the Problem):
  •	(Inputs): A positive integer and a boolean

  •	(Outputs): Integer that expresses whether the bonus is half the salary(true) or 0(false)

  •	(Rules):
    o	(Explicit):
      - Method takes two arguments (integer, boolean)
      - Integer will be positve, boolean is true or false
      - if boolean is true, half the salary
      - if boolean is false, 0

    o	(Implicit):

  •	(Questions):

  •	(Mental Model):
    - Given a salary and a boolean, calculate the bonus for the salary depending on if the boolean is true or false.
      If true, the bonus will be half the salary (salary / 2), if false, the bonus will be 0.

(Examples / Test Cases):

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000


(Data Structure): Integer

(Algorithm):
  - Ternary operator
    - condition: boolean
    - if true: salary / 2
    - if false: 0
=end

# (Code)

def calculate_bonus(salary, boolean)
  boolean ? salary / 2 : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000