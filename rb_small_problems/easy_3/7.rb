=begin
Problem:
Write a method that returns an Array that contains every other element of an Array that is passed in as an argument.
The values in the returned list should be those values that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

Understand the Problem:
  •	Inputs: Array (as an argument to a method)
  •	Outputs: Array (containing the values in even indices of passed in array)
  •	Questions:
  •	Rules:
    o	Explicit:
        - Method should return an array
        - Returned array must contain every other element of the array that is passed in as an argument (1st, 3rd, 5th, etc... elements)

    o	Implicit:
        - Passed in arrays can consist of strings or numbers
        - If an empty array is passed in, the return value should be an empty array
•	Ideas:

Examples / Test Cases:

oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []

Data Structure:
•	Inputs: Array
•	Outputs: Array

Algorithm / Pseudocode:
  - Create an empty array `even_indices` that will store elements from passed in array
  - Iterate through passed in array and push even indices to `even_indices` array
  - Return `even_indices`

Code
=end

# def oddities(array)
#   even_indices = array.select do |element|
#     array.index(element).even?
#   end
#   even_indices
# end

def oddities(array)
  even_indices = []
  counter = 0

  while counter < array.size
    even_indices << array[counter]
    counter += 2
  end
  even_indices
end


p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []
