=begin
problem:
You are given array of integers, your task will be to count all pairs in that array 
and return their count.

input: array of numbers
output: integer

explicit rules:
1. count all pairs of integers in input array and return the count
2. array can be empty or contain only one value, in this case return 0
3. if there are more pairs of a certain number, count each pair only once. 
    ex: [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)

data structure: integer
algo:
1. define method `pairs` with parameter `arr`
  - group `arr` by its integers
  - divide the array (values) by 2 to come up with pair count
  - add all of the values up to get return value
  - return count

=end

def pairs(arr)
  grouped_nums = arr.group_by { |n| n} #{1=>[1], 2=>[2, 2], 5=>[5, 5], 6=>[6]}

  grouped_nums.values #[[1], [2, 2], [5, 5], [6]]
              .map { |sub| sub.size / 2} #[0, 1, 1, 0]
              .sum #2
end


p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0