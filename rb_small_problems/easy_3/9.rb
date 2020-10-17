=begin
(Problem):
Write another method that returns true if the string passed as an argument is a palindrome, false otherwise.
This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.
If you wish, you may simplify things by calling the palindrome? method you wrote in the previous exercise.


(Understand the Problem):
•	(Inputs): String


•	(Outputs): Boolean


•	(Questions):



•	(Rules):
  o	(Explicit):
      - Determine whether passed in string is a palindrome
      - Method should be case insensitive and should ignore all non-alphanumeric characters



  o	(Implicit):


•	(Ideas):

(Examples / Test Cases):


real_palindrome?('madam') == true
real_palindrome?('Madam') == true           # (case does not matter)
real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
real_palindrome?('356653') == true
real_palindrome?('356a653') == true
real_palindrome?('123ab321') == false


(Data Structure):

(Algorithm):
  - Write `real_palindrome` method that takes in one string argument
  - Remove all spaces and non-alphanumeric characters in given string
  - Make sure string is case insensitive
  - Determine if string is the same as string in reverse

(Code)

=end

def palindrome?(string)
  string == string.reverse!
end

def real_palindrome?(string)
  new_string = string.delete("^a-z0-9")
  palindrome?(new_string)
end

p real_palindrome?('madam') == true
p real_palindrome?('Madam') == true           # (case does not matter)
p real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
p real_palindrome?('356653') == true
p real_palindrome?('356a653') == true
p real_palindrome?('123ab321') == false