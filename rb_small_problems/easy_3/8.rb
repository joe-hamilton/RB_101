=begin
(Problem):
Write a method that returns true if the string passed as an argument is a palindrome, false otherwise.
A palindrome reads the same forward and backward. For this exercise, case matters as does punctuation and spaces.

(Understand the Problem):
•	(Inputs): String


•	(Outputs): Boolean


•	(Questions):



•	(Rules):
  o	(Explicit):
      - The return value must be a boolean
      - Case, punctuation, and spaces matter when determining if given string is a palindrome.


  o	(Implicit):


•	(Ideas):

(Examples / Test Cases):


palindrome?('madam') == true
palindrome?('Madam') == false          # (case matters)
palindrome?("madam i'm adam") == false # (all characters matter)
palindrome?('356653') == true


(Data Structure):

(Algorithm):
  - Write a method that takes in one `string` argument
  - Take given string and determine whether it reads the same in reverse.
  - The return value should be a boolean (true or false)

(Code)

=end


def palindrome?(string)
  string == string.reverse!
end


p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true