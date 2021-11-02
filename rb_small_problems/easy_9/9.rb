# Grade Book

=begin
(Understand the Problem)
  Problem:
    Write a method that determines the mean (average) of the three scores passed to it, and returns the letter value associated with that grade.

  Inputs: 3 Integers
  Outputs: String (letter grade associated with the mean of the 3 Integers passed in as arguments)
  Questions:
    1.
  Explicit Rules:
    1. Tested values are all between 0 and 100. There is no need to check for negative values or values greater than 100.
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes 3 Integer parameters and finds the mean (average) of those numbers.
    - Return the grade associated with that final average number.

(Examples/Test Cases)
  get_grade(95, 90, 93) == "A"
  get_grade(50, 50, 95) == "D"

(Data Structure)
  String (letter grade associated with mean)

(Algorithm)
    - Define method 'get_grade' with 3 parameters (num1, num2, num3)
      - Initialize local variable 'letter_grade' and assign it to a Hash containing the letters as keys, and the grade ranges as values
      - Add all three integer parameters together, divide the total by 3, and save it to initialized local variable 'mean'
      - Check to see what value in the 'letter_grade' hash contains the mean, and return the corresponding key.

(Code)
=end

def get_grade(num1, num2, num3)
  letter_grade = { 'A' => (90..100), 'B' => (80..89), 'C' => (70..79),
                   'D' => (60..69), 'F' => (0..59) }

  mean = (num1 + num2 + num3) / 3

  case mean
  when letter_grade["A"] then "A"
  when letter_grade["B"] then "B"
  when letter_grade["C"] then "C"
  when letter_grade["D"] then "D"
  else                        "F"
  end
end

# Alternate Solution

# def get_grade(grade1, grade2, grade3)
#   average_grade = (grade1 + grade2 + grade3) / 3

#   return 'A' if average_grade.between?(90, 100)
#   return 'B' if average_grade.between?(80,89)
#   return 'C' if average_grade.between?(70, 79)
#   return 'D' if average_grade.between?(60, 69)
#   return 'F' if average_grade.between?(0, 59)
# end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"