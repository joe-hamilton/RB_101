=begin
(Problem):
Write a program that will ask a user for an input of a word or multiple words and give back the number of characters.
Spaces should not be counted as a character.


(Understand the Problem):
•	(Inputs): String from user (word or words)


•	(Outputs): String (counting how many characters are included in user's input)


•	(Questions):



•	(Rules):
  o	(Explicit):
    - Ask user for input String
      - String consisting of word or words
    - Spaces should not count as characters
    - The output should count the number of characters included in input String


  o	(Implicit):


•	(Ideas):

(Examples / Test Cases):

Please write word or multiple words: walk, don't run
There are 13 characters in "walk, don't run".

(Data Structure): String

(Algorithm):
- Ask the human for input string
  - string can consist of word or words
- Delete spaces in the string
- Iterate through string and count number of characters
- Print out string that shows the count of characters

(Code)

=end

puts "Please write word or multiple words: "
words = gets.chomp

char_count = words.delete(' ').size

puts "There are #{char_count} characters in '#{words}'"