# CLEAN UP THE WORDS

=begin
Given a string that consists of some words (all lowercased) and an assortment of non-alphabetic characters,
write a method that returns that string with all of the non-alphabetic characters replaced by spaces.
If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

(Understand the Problem):
  •	(Inputs): string that consists of words and non-alphabetic characters

  •	(Outputs): string with all non-alphabetic characters replaced by spaces

  •	(Questions):

  •	(Rules):
    o	(Explicit):
        - the result should never have consecutive spaces

    o	(Implicit):


  •	(Mental Model):
      - given a string that contains words and non-alphabetic characters,
      - write a method that returns the input string with all non-alphabetic characters removed
      - if one or more non-alphabetic characters occur consecutively, you should only have one space in the result

(Examples / Test Cases):

cleanup("---what's my +*& line?") == ' what s my line '

(Data Structure): string

(Algorithm):
  - create constant variable 'ALPHABET' that points to an array containing all alphabets
  - create method `cleanup` that takes in a string and splits it into individual characters
  - create variable `clean_chars` inside the method that points to an empty array
  - iterate through the array of individual characters...
    - if the character is included in `ALPHABET` variable, place into `clean_chars`
    - otherwise, place a space into `clean_chars` unless the last element in array is a space
  - return `clean_chars` variable
=end

# (Code)

ALPHABET = ('a'..'z').to_a

def cleanup(string)
  clean_chars = []

  string.chars.each do |element|
    if ALPHABET.include?(element)
      clean_chars << element
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end
  clean_chars.join(' ')
end


p cleanup("---what's my +*& line?") #== ' what s my line '