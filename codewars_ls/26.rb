=begin
problem:
Complete the function that...

accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.

input: two arrays 
output: integer

explicit rules:
1. method will take two arrays as arguments
2. find the absolute difference value of each element from each input array in its corresponding index
3. square the absolute difference
4 return the average of all the absolute differences

examples: 
p solution([1, 2, 3], [4, 5, 6]) #== 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) #== 16.5
p solution([-1, 0], [0, -1]) #== 1

algo:
1. define method `solution` with parameters `arr1`, arr2
  - iterate through `arr1` and create a new array containing the absolute difference between the current number and the number from the same index in `arr2`
  - square each number in `difference_arr`
  - return the average of the array

=end

def solution(arr1, arr2)
  arr1.map.with_index { |n, i| (n - arr2[i]).abs }
          .map { |n| n ** 2}.sum / arr1.size.to_f
end



p solution([1, 2, 3], [4, 5, 6]) #== 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) #== 16.5
p solution([-1, 0], [0, -1]) #== 1