# How Long Are You?

=begin
(Understand the Problem)
  Problem:
    Write a method that takes a string as an argument, and returns an Array that contains every word from the string, to which you have appended a space and the word length

  Inputs: String
  Outputs: Array of Strings
  Questions:
    1.
  Explicit Rules:
    1. You may assume that words in the string are separated by exactly one space, and that any substring of non-space characters is a word
    2.
  Implicit Rules:
    1. Empty input String should return an empty Array
    2.
  Mental Model:
    - Create a method that takes a String as an argument
    - The method should return an Array containing each word with the corresponding word length
    - Each element in the Array will consist of the word in the input String, and the word length (Ex: cow 2)

(Examples/Test Cases)
  word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

  word_lengths("baseball hot dogs and apple pie") ==
    ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

  word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

  word_lengths("Supercalifragilisticexpialidocious") ==
    ["Supercalifragilisticexpialidocious 34"]

  word_lengths("") == []

(Data Structure)
    Array

(Algorithm)
    - Define method `word_lengths` with one parameter `str`
      - Split `str` by its spaces then iterate through
      - Return String consisting of `word` and the size of `word` and save in Array
      - Return Array

(Code)
=end

def word_lengths(str)
  new_arr = str.split.each_with_object([]) do |word, a|
    a << "#{word} #{word.size}"
  end
  new_arr
end

# Alternate Solution
# def word_lengths(string)
#   string.split.map do |word|
#     word + " #{word.length}"
#   end
# end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []