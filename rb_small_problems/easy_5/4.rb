#LETTER SWAP

=begin
Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

(Understand the Problem):
  •	(Inputs): string of words separated by spaces

  •	(Outputs): string (first and last letters of each word should be swapped)

  •	(Questions):

  •	(Rules):
    o	(Explicit):
      - each word will contain at least one letter
      - input string will always contain at least one word
      - each input string will only contain words and spaces


    o	(Implicit):


  •	(Mental Model):
      - write a method that takes in a string containing words and spaces
      - the output of the method should return a string in which the first and last letters of every word in input string are swapped


(Examples / Test Cases):

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

(Data Structure): string

(Algorithm):
  - create method `swap_letters` that makes the first and last characters of a word equal the last and first characters
  - create method `swap` that takes in a string
    - split the string and create a new array while iterating through each element of new array


=end

# (Code)

def letter_swap(string)
  string[0], string[-1] = string[-1], string[0]
  string
end

def swap(string)
  split_string = string.split.map do |element|
    letter_swap(element)
  end
  split_string.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'