=begin
(Problem):
Write a method that takes two strings as arguments, determines the longest of the two strings,
and then returns the result of concatenating the shorter string, the longer string,
and the shorter string once again. You may assume that the strings are of different lengths.

(Understand the Problem):
  •	(Inputs): Two strings as arguments (one will be shorter than the other)

  •	(Outputs): String (Result of concatenating the shorter string, the longer string, and shorter string again.)

  •	(Questions):

  •	(Rules):
    o	(Explicit):
        - The method will take two strings as arguments
          - The method determines the longest of the two strings
        - Return value is the result of concatenating the shorter string, the longer string, and the shorter string again
        - You can assume the strings are of different lengths

    o	(Implicit):


  •	(Ideas):

(Examples / Test Cases):

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"


(Data Structure): String

(Algorithm):
  - Create method that takes two strings as arguments
  - Create a if/else statement
    - On `if` statement, if string1 is larger than string2, puts string2 + string1 + string2
    - On `else` statement, puts string1 + string2 + string1

(Code)

=end

def short_long_short(string1, string2)
  if string1.size > string2.size
    string2 + string1 + string2
  else
    string1 + string2 + string1
  end
end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"