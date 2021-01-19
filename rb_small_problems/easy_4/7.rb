=begin
(Understand the Problem)
  Problem:
    Write a method that takes a String of digits, and returns the appropriate number as an integer.

  Inputs: string of numbers
  Outputs: number(string turned into a number)
  Questions:
    1.
  Explicit Rules:
    1. you may not use any traditional methods that turns strings into integers
    2. assume all characters are numeric
  Implicit Rules:
    1.
    2.
  Mental Model:
    - write a method that takes a string of digits and returns the string as an integer
    -

(Examples/Test Cases)
  string_to_integer('4321') == 4321
  string_to_integer('570') == 570

(Data Structure)
   integer

(Algorithm)
    - create a hash that contains string integers as keys and corresponding integers as values
    - create a method that takes a string of integers
    - inside the method, create a variable that contains an empty array
    - create a variable that contains 0
    - find the integer equivalent by looking up the string (key) in the hash and append it to the empty array
    - iterate through newly initialized array
    - find the total by multiplying `total` by 10 and adding the element in current iteration. save to `total` variable

(Code)
=end

NUMBERS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  num_equivalents = []
  total = 0

  string.chars.each {|ele| num_equivalents << NUMBERS[ele]}

  num_equivalents.each {|num| total = total * 10 + num}
  total
end

p string_to_integer('4321') #== 4321
p string_to_integer('570') #== 570