# ASCII STRING VALUE

=begin
(Understand the Problem)
  Problem:
    Write a method that determines and returns the ASCII string value of a string that is passed in as an argument.
    The ASCII string value is the sum of the ASCII values of every character in the string.

  Inputs: String
  Outputs: Integer (ASCII value)
  Questions:
    1.
  Explicit Rules:
    1. You may use the String#ord method to determine the ASCII value of a character.
    2. The ASCII string value is the sum of the ASCII values of every character in the string.
  Implicit Rules:
    1. If an empty string is passed into method, it should return an ASCII value of 0.
    2.
  Mental Model:
    - Write a method that determines and returns the ASCII value of the string passed into the method as an argument.
    - The ASCII string value is the sum of the ASCII value of each character in the string.

(Examples/Test Cases)
  ascii_value('Four score') == 984
  ascii_value('Launch School') == 1251
  ascii_value('a') == 97
  ascii_value('') == 0

(Data Structure)
    Integer (sum of the ASCII value of each character)

(Algorithm)
    - Create method `ascii_value` with one String parameter
    - Inside method, split up input string into individual characters
    - Create a new array that will hold the ASCII value of each character in input string
    - Iterate through array of characters and calculate the ASCII value of each character on eac iteration
    - Calculate the sum of ASCII values in new array

(Code)
=end

# def ascii_value(str)
#   ord_arr = str.chars.map do |char|
#     char.ord
#   end
#   ord_arr.sum
# end

def ascii_value(str)
  sum = 0

  str.each_char { |char| sum += char.ord}
  sum
end

p ascii_value('Four score') #== 984
p ascii_value('Launch School') #== 1251
p ascii_value('a') #== 97
p ascii_value('') #== 0