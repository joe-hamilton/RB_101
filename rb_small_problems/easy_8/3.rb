# Leading Substrings

=begin
(Understand the Problem)
  Problem:
    Write a method that returns a list of all substrings of a string that start at the beginning of the original string

  Inputs: String
  Outputs: An Array of substrings from input String
  Questions:
    1.
  Explicit Rules:
    1. The return value should be arranged in order from shortest to longest substring
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes in a String as an argument, and returns an array containing all substrings of input String that start at the beginning of input String
    - The output Array should sort the substrings from shortest to longest

(Examples/Test Cases)
  leading_substrings('abc') == ['a', 'ab', 'abc']
  leading_substrings('a') == ['a']
  leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

(Data Structure)
    Array of substrings

(Algorithm)
    - Define method 'leading_substrings' with one String parameter
      - Initialize local variable 'substrings' and assign it to an empty Array
      - Initialize local variable 'letters' and assign it to an Array of separated elements
      - Take off a portion of 'letters' starting from index 0 to the current length (starting at 1) and append that portion in 'substrings' Array
      - Increase the length to be sliced off by 1 on each iteration until the number reaches the size of input String
      - Take 'substrings' and create a new array with each sub array joined together

(Code)
=end

def leading_substrings(string)
  substrings = []
  letters = string.chars

  1.upto(string.size) do |sliced_length|
    substrings << letters.slice(0, sliced_length)
  end

  substrings.map do |sub_array|
    sub_array.join
  end
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']