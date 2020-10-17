# Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

def repeat(string, number)
  number.times {puts string}
end

#Example
repeat('Hello', 3)