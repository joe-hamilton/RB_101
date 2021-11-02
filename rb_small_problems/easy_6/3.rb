# Fibonacci Number Location By Length

=begin
(Understand the Problem)
  Problem:
    Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument

  Inputs: Integer
  Outputs: Integer
  Questions:
    1. What is a fibonacci number?
  Explicit Rules:
    1. The first Fibonacci number has index 1
    2. The first two numbers in a Fibonacci series is 1, and each subsequent number is the sum of the two previous numbers
    3. You may assume that the argument is always greater than or equal to 2.
  Implicit Rules:
    1.
    2.
  Mental Model:
    - Write a method that takes an Integer as an argument
    - The input Integer represents the number of digits of given Fibonacci number
    - Inside the method, calculate the series of Fibonacci numbers and return the index of the first Fibonacci number that has the number of specified digits

(Examples/Test Cases)
  find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
  find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
  find_fibonacci_index_by_length(10) == 45
  find_fibonacci_index_by_length(100) == 476
  find_fibonacci_index_by_length(1000) == 4782
  find_fibonacci_index_by_length(10000) == 47847

(Data Structure)
    Integer

(Algorithm)
    - Define method `find_fibonacci_index_by_length` with one parameter `index`
      - Create Array `fibonacci_num` that contains the first two fibonacci numbers (1, 1).
      - Initialize `index` with a value of 0
      - Initialize variable `first_number` with a value of the first number in the `fibonacci_number` Array
      - Initialize variable `second_number` with a value of the second number in the `fibonacci_number` Array
      - Create loop
        - Add the first and second number to get the third value in the Array
        - Move to the second and third number to get the fourth value in the Array
        - Incrementally increase the index of the first number until you have the number that represents the number of digits reflected in input Integer

(Code)
=end


def find_fibonacci_index_by_length(digits)
  fibonacci_num = [1, 1]
  index = 0

  loop do
    first_number = fibonacci_num[index]
    second_number = fibonacci_num[index + 1]

    fibonacci_num << first_number + second_number
    index += 1
    break if fibonacci_num.last.to_s.size == digits
  end
  fibonacci_num.count
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847
