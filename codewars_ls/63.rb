# Find the Parity Outlier

=begin
problem:
You are given an array (which will have a length of at least 3, but could be very large) containing integers. 
The array is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N. 
Write a method that takes the array as an argument and returns this "outlier" N.

input: array of integers
output: integer (the integer in the array that is different than the others)

explicit rules:
1. the array will have at least 3 integers, but could have many
2. the array will be entirely comprised of odd numbers, or even numbers, except one integer
3. return the outlier in the input array

implicit rules: 
1. integers can be positive or negative
2. all numbers are represented as integers and not digits (string integers)

examples:
[2, 4, 0, 100, 4, 11, 2602, 36]
Should return: 11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21]
Should return: 160 (the only even number)

data structure: array --> array --> integer
algo: 
1. define method `find_outlier` with parameter `num_arr`
  - select all integers in `num_arr` that are odd and assign to local variable `new_arr`
  - return the first integer in `new_arr` if its size is 1
  - otherwise, subtract `num_arr` from `new_arr` and return the first integer
=end

def find_outlier(num_arr)
  new_arr = num_arr.select  { |num| num.odd? } # [1, 3]

  return new_arr.first if new_arr.size == 1
  (num_arr - new_arr).first # 2
end


p find_outlier([0, 1, 2]) #== 1
p find_outlier([1, 2, 3]) #== 2