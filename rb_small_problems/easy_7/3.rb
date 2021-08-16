# Capitalize Words

=begin
(Understand the Problem)
  Problem:
    Write a method that takes a single String argument and returns a new string that contains the original value of the argument
    with the first character of every word capitalized and all other letters lowercase.

  Inputs: String
  Outputs: String that contains the original value with the first character of each word capitalized and all other letters lowercase
  Questions:
    1.
  Explicit Rules:
    1. You may assume that words are any sequence of non-blank characters.
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes a single String as an argument and returns a new String that contains the original value of the original String
    - The first character of each word should be capitalized and all other letters lowercase

(Examples/Test Cases)
  word_cap('four score and seven') == 'Four Score And Seven'
  word_cap('the javaScript language') == 'The Javascript Language'
  word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

(Data Structure)
  String

(Algorithm)
    - Define method 'word_cap' with one String parameter
      - Initialize local variable 'capitalized_words' and assign it to an empty Array
      - Initialize local variable 'letters' and assign it to an Array containing the alphabet
      - Split the original String into separate elements in an Array
      - Iterate through the Array of words and capitalize each word if the first letter in the word is included in the 'letters' array
      - Add the capitalized words to 'capitalized_words'
      - Return the 'capitalized_words' array and join the elements delimited by a space

(Code)
=end

# def word_cap(string)
#   capitalized_words = []
#   letters = ('a'..'z').to_a

#   string.split.each do |word|
#     if letters.include?(word[0])
#       capitalized_words << word.capitalize
#     else
#       capitalized_words << word
#     end
#   end
#   capitalized_words.join(' ')
# end

# Akternate Solution
def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

p word_cap('four score and seven') #== 'Four Score And Seven'
p word_cap('the javaScript language') #== 'The Javascript Language'
p word_cap('this is a "quoted" word') #== 'This Is A "quoted" Word'