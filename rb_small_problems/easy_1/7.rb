=begin
(Problem):
Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1.
The length of the string should match the given integer.


(Understand the Problem):
  •	(Inputs): A positive integer

  •	(Outputs): String of alternating 1's and 0's, starting with 1. Size of string is based on given integer

  •	(Rules):
    o	(Explicit):
      - Input should be a positive integer
      - Size of string should match input integer
      - Output string should always start with 1


    o	(Implicit):

  •	(Questions):

  •	(Mental Model): Given an integer, return a string that alternates between 1's and 0's, beginning with 1. The size of the string should match the given integer.

(Examples / Test Cases):

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'


(Data Structure): String (consists of alternating 1's and 0's)

(Algorithm):
  - store empty string in `binary_num` variable
  - store a value of 0 in `counter` variable
  - create loop
    - break out of the loop when `counter` equals given integer
    - create an if/else statement
      - if `counter` is even, put 1
      - else, put 0
    - increment `counter` by 1


=end

# (Code)

def stringy(integer)
  binary_num = ''
  counter = 0

  loop do
    break if counter == integer

    if counter.even?
      binary_num << '1'
    else
      binary_num << '0'
    end
    counter += 1
  end
  binary_num
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'