=begin
(Problem):
  Write a method that takes one argument, a string, and returns a new string with the words in reverse order.


(Understand the Problem):
  •	(Inputs): String of words

  •	(Outputs): New string with words in reverse order

  •	(Rules):
    o	(Explicit):
        - Output should be a new string and not the existing one
        - Words should be in reverse order


    o	(Implicit):
        - If input string is empty, return an empty string
        - The words in the string should be reversed, not the characters in the words

  •	(Questions):

  •	(Mental Model): With a given string, reverse the words and return the new string

(Examples / Test Cases):

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'


(Data Structure): String (create a new string)

(Algorithm):
  - Store empty array in `reversed_words` array
  - Turn input string into array by splitting the substrings into individual elements and store in `array` variable
  - Iterate through array
    - Remove the last element in array and append into `reversed_words` array until array is empty
  - Return `reversed_words` array and join array together separated by spaces

(Code)

=end

def reverse_sentence(string)
  reversed_words = []
  array = string.split

  array.each do |element|
    reversed_words << array.pop until array.empty?
  end
  reversed_words.join(' ')
end


puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'