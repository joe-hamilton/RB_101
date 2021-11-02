=begin
(Understand the Problem)
  Problem:
    Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

  Inputs: Array of Strings
  Outputs: Array of Strings with vowels removed
  Questions:
    1. Are we mutating the original Array object, or creating a new Array object?
  Explicit Rules:
    1. Remove all vowels from Strings in Array
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes an Array of Strings as an argument
    - Return a new array with the same String values, but with the vowels removed

(Examples/Test Cases)
  remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
  remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
  remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

(Data Structure)
    New Array

(Algorithm)
    - Define method `remove_vowels` with one parameter `str_arr`
      - Iterate through each String in the Array and delete all vowels (aeiou). Save the new String in a new Array
      - Return the Array

(Code)
=end


def remove_vowels(str_arr)
  new_arr = str_arr.map do |word|
    word.delete("aeiouAEIOU")
  end
  new_arr
end


p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']