# Word to Digit

=begin
(Understand the Problem)
  Problem:
    Write a method that takes a sentence string as input, and returns the same string with any sequence of the words
    'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

  Inputs: String (sentence)
  Outputs: String (original String object)
  Questions:
    1.
  Explicit Rules:
    1. The String#gsub! method may prove useful in this problem
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Create a method that takes a String sentence as an argument
    - The method should return the same String with any sequence of words such as 'zero', 'one', 'two' substituted with their digit string counterparts

(Examples/Test Cases)
  word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

(Data Structure)
    String (same sentence as original String object)

(Algorithm)
    - Define method `word_to_digit` with one parameter `sentence`
      - Create a Hash with `zero`, `one`, `two`, etc. as the keys, and the string digit equivalent as the value. Assign hash object to `string_digits`
      - Iterate through `string_digits` and for every time the key is in `sentence`, substitute it for the corresponding `value`

(Code)
=end


def word_to_digit(sentence)
  string_digits = { "zero": "0", "one": "1", "two": '2', "three": "3", "four": "4",
                    "five": "5", "six": "6", "seven": "7", "eight": "8", "nine": "9"
  }

  string_digits.each do |key, value|
    sentence.gsub!(/\b#{key}\b/, value)
  end
  sentence
end


p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'