# Fizzbuzz

=begin
(Understand the Problem)
  Problem:
    Write a method that takes two arguments: the first is the starting number, and the second is the ending number.
    Print out all numbers between the two numbers, except
      - if a number is divisible by 3, print "Fizz",
      - if a number is divisible by 5, print "Buzz", and finally
      - if a number is divisible by 3 and 5, print "FizzBuzz".

  Inputs: Two Integers
  Outputs: Integers and Strings
  Questions:
    1.
  Explicit Rules:
    1. Only print the numbers that aren't divisible by 3 or 5
    2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes two Integer arguments: the first is the starting number and the next is the ending number
    - Print out all the numbers between the two, unless...
      - a number is divisible by 3, print "Fizz"
      - a number is divisible by 5, print "Buzz"
      - a numbe is divisible by both, print "FizzBuzz"

(Examples/Test Cases)
  fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

(Data Structure)
    Output of Integers and Strings

(Algorithm)
    - Define method 'fizzbuzz' with two Integer parameters
      - Initialize local variable 'array' and assign it to an empty array
      - From 'num1' up to 'num2', print out num, unless...
        - if num is divisible by 3, print "Fizz"
        - or if num is divisible by 5, print "Buzz"
        - or if num is divisible by both, print "FizzBuzz"
        - otherwise, print num

(Code)
=end

def fizzbuzz(num1, num2)
  array = []

  num1.upto(num2) do |num|
    if (num % 3 == 0) && (num % 5 == 0)
      array << "FizzBuzz"
    elsif num % 5 == 0
      array << "Buzz"
    elsif num % 3 == 0
      array << "Fizz"
    else
      array << num
    end
  end
  array.join(', ')
end

p fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz