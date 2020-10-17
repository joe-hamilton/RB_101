=begin
(Problem):

Write a method that takes an Array of numbers,
and returns an Array with the same number of elements,
and each element has the running total from the original Array.

(Understand the Problem):
  •	(Inputs): Array of numbers


  •	(Outputs):
    Array (containing same # of elements where each element is
    the running total from the original array)


  •	(Rules):
    o	(Explicit):
      - The return array should contain the same # of elements as input array


    o	(Implicit):
      - If input array is empty, return array is also empty
      - If input array contains one number, return array contains same element

  •	(Questions):

  •	(Ideas):

(Examples / Test Cases):

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []


(Data Structure): Array (containing running total of original array)

(Algorithm):
  - Create method `running_total` that takes in one array argument
    - Inititalize `counter` variable pointing to a value of 0
    - Initialize `sum` variable pointing to a value of 0
    - Initialize `total_array` array pointing to empty array
    -


(Code)

=end

def running_total(array)
  sum = 0

  array.map {|element| sum += element}
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []